#!/usr/bin/env python3

import sys
import json

class Info:

    def __init__(self, file='info.json'):
        self.filename=file
        self.info = {}
    
    def load(self, file=None):
        if file is None:
            file = self.filename
        try:
            with open(file, 'rt') as f:
                self.info = json.load(f)
        except FileNotFoundError() as e:
            self.info = {}
    
    def save(self, file=None):
        if file is None:
            file = self.filename
        with open(file, 'wt') as f:
            json.dump(self.info, f, indent=4)
    
    def add(self, package, node=None, type=None):
        if package not in self.info:
            self.info[package] = {}
        if node is not None:
            self.info[package]['node'] = node
        if type is not None:
            self.info[package]['type'] = type


def main(argv):
    pass

if __name__ == '__main__':
    main(sys.argv[1:])