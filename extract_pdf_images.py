import fitz
import os
import json
import logging
import uuid
from datetime import datetime

# Setup structured logging
logging.basicConfig(level=logging.INFO, format='%(message)s')
logger = logging.getLogger("ImageExtractor")

def log_event(level, message, context=None):
    log_data = {
        "timestamp": datetime.now().isoformat(),
        "level": level,
        "trace_id": str(uuid.uuid4()),
        "context": context or {},
        "message": message
    }
    logger.info(json.dumps(log_data))

def extract_images_from_pdf(pdf_path, out_dir, page_start, page_end):
    trace_id = str(uuid.uuid4())
    img_count = 0
    try:
        if not os.path.exists(pdf_path):
            raise FileNotFoundError(f"PDF file not found: {pdf_path}")
            
        os.makedirs(out_dir, exist_ok=True)
        doc = fitz.open(pdf_path)
        
        for page_num in range(page_start, page_end):
            if page_num >= len(doc):
                break
                
            page = doc.load_page(page_num)
            images = page.get_images(full=True)
            
            for img_idx, img in enumerate(images):
                xref = img[0]
                base_image = doc.extract_image(xref)
                image_bytes = base_image["image"]
                image_ext = base_image["ext"]
                
                image_name = f"page{page_num+1}_img{img_idx}.{image_ext}"
                filepath = os.path.join(out_dir, image_name)
                
                with open(filepath, "wb") as f:
                    f.write(image_bytes)
                img_count += 1
                
        log_event("INFO", f"Successfully extracted images", {
            "img_count": img_count,
            "page_range": [page_start+1, page_end],
            "out_dir": out_dir
        })
        doc.close()
        
    except Exception as e:
        log_event("ERROR", f"Failed to extract images: {str(e)}", {
            "pdf_path": pdf_path,
            "trace_id": trace_id
        })
        raise

if __name__ == "__main__":
    PDF_PATH = 'd:/Phd/EE5217_Tue/refs/3-Digital System Test and Testable Design_ Using HDL Models and Architectures.pdf'
    OUT_DIR = 'images/raw_extracted'
    try:
        extract_images_from_pdf(PDF_PATH, OUT_DIR, 210, 265)
    except Exception:
        pass
