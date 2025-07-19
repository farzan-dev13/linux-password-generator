#!/bin/bash

# Password Generator v1.1.0
# Version: 1.1.0
# Author: Farzan Afringan
# License: MIT


# Default values
LENGTH=16
COUNT=1
CHARS='A-Za-z0-9!@#$%^&*_'

print_help() {
    echo "Password Generator v2"
    echo "Usage: $0 [options]"
    echo ""
    echo "Options:"
    echo "  -l, --length   LENGTH     Length of each password (default: 16)"
    echo "  -n, --number   COUNT      Number of passwords to generate (default: 1)"
    echo "  -s, --simple              Only use letters and numbers (no symbols)"
    echo "  -h, --help                Show this help message"
}

# Parse arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        -l|--length)
            LENGTH="$2"
            shift 2
            ;;
        -n|--number)
            COUNT="$2"
            shift 2
            ;;
        -s|--simple)
            CHARS='A-Za-z0-9'
            shift
            ;;
        -h|--help)
            print_help
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            print_help
            exit 1
            ;;
    esac
done

# Generate passwords
for ((i=1; i<=COUNT; i++)); do
    PASSWORD=$(tr -dc "$CHARS" < /dev/urandom | head -c "$LENGTH")
    echo "Password $i: $PASSWORD"
done
