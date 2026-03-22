import re
import json
import logging
import uuid
import os
from datetime import datetime

# Setup structured logging
logging.basicConfig(level=logging.INFO, format='%(message)s')
logger = logging.getLogger("FigureFinder")

def log_event(level, message, context=None):
    log_data = {
        "timestamp": datetime.now().isoformat(),
        "level": level,
        "trace_id": str(uuid.uuid4()),
        "context": context or {},
        "message": message
    }
    logger.info(json.dumps(log_data))

def find_figures_in_text(input_file, output_file):
    try:
        if not os.path.exists(input_file):
            raise FileNotFoundError(f"Input file not found: {input_file}")
            
        with open(input_file, 'r', encoding='utf-8', errors='ignore') as f:
            text = f.read()

        figures = re.findall(r'Fig\.\s*\d+\.\d+.*?(?=\n)', text)
        
        with open(output_file, 'w', encoding='utf-8') as out:
            for i, fstr in enumerate(figures):
                out.write(f"{i+1}. {fstr}\n")
        
        log_event("INFO", f"Successfully found and saved figures", {
            "figure_count": len(figures),
            "input_file": input_file,
            "output_file": output_file
        })
        
    except Exception as e:
        log_event("ERROR", f"Failed to find figures: {str(e)}", {
            "input_file": input_file
        })
        raise

if __name__ == "__main__":
    find_figures_in_text('Chapter7_Pages200_300.txt', 'figures_list.txt')
