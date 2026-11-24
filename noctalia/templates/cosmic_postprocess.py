#!/usr/bin/env python3
import sys
import re
import os

def process_color(match):
    r = int(match.group(1)) / 255.0
    g = int(match.group(2)) / 255.0
    b = int(match.group(3)) / 255.0
    return f"({r:.5f}, {g:.5f}, {b:.5f})"

def main():
    if len(sys.argv) < 2:
        print("Usage: cosmic_postprocess.py <path_to_ron>")
        sys.exit(1)
        
    filepath = sys.argv[1]
    # Expand tilde if present
    filepath = os.path.expanduser(filepath)
    
    with open(filepath, 'r') as f:
        content = f.read()
        
    # Find rgb(r, g, b) and convert to float tuples
    processed = re.sub(r'rgb\(\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*\)', process_color, content)
    
    with open(filepath, 'w') as f:
        f.write(processed)
        
    print(f"Successfully processed {filepath}")

if __name__ == '__main__':
    main()
