import PyPDF2
import os
import json
import logging
import uuid
from datetime import datetime

# Setup structured logging
logging.basicConfig(level=logging.INFO, format='%(message)s')
logger = logging.getLogger("PdfExtractor")

def log_event(level, message, context=None):
    log_data = {
        "timestamp": datetime.now().isoformat(),
        "level": level,
        "trace_id": str(uuid.uuid4()),
        "context": context or {},
        "message": message
    }
    logger.info(json.dumps(log_data))

def extract_pdf_pages(pdf_path, output_path, start_page, end_page):
    trace_id = str(uuid.uuid4())
    try:
        if not os.path.exists(pdf_path):
            raise FileNotFoundError(f"PDF file not found: {pdf_path}")
            
        reader = PyPDF2.PdfReader(pdf_path)
        text = ""
        actual_end_page = min(end_page, len(reader.pages))
        
        for i in range(start_page, actual_end_page):
            text += reader.pages[i].extract_text() + "\n"
            
        with open(output_path, "w", encoding="utf-8") as f:
            f.write(text)
            
        log_event("INFO", f"Extracted pages {start_page} to {actual_end_page} successfully", {
            "pdf_path": pdf_path,
            "output_path": output_path,
            "pages_requested": [start_page, end_page],
            "pages_actual": actual_end_page
        })
        
    except Exception as e:
        log_event("ERROR", f"Failed to extract PDF pages: {str(e)}", {
            "pdf_path": pdf_path,
            "trace_id": trace_id
        })
        raise

if __name__ == "__main__":
    PDF_FILE = "d:/Phd/EE5217_Tue/refs/3-Digital System Test and Testable Design_ Using HDL Models and Architectures.pdf"
    OUTPUT_FILE = "Chapter7_Pages200_300.txt"
    try:
        extract_pdf_pages(PDF_FILE, OUTPUT_FILE, 200, 301)
    except Exception:
        pass # Errors are already logged
