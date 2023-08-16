#!/usr/bin/env python3

import sys
import json
from info import Info


def main(argv):
    package = argv[0]

    info = Info('info.json')
    info.load()

    if package not in info:
        info.add('package')


if __name__ == '__main__':
    main(sys.argv[1:])
