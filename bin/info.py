#!/usr/bin/env python3

import sys
import json

def load(file='info.json'):
    try:
        with open(file, 'rt') as f:
            return json.load(f)
    except FileNotFoundError as e:
        return {}

def save(info, file='info.json'):
    with open(file, 'wt') as f:
        json.dump(info, f, indent=4)
    
def main(argv):
    info = load()
    save(info)

if __name__ == '__main__':
    main(sys.argv[1:])