#!/bin/bash

# passgen-v1.3.sh
# Author: Farzan Afringan
# Version: 1.3.0

print_help() {
    echo "Usage: $0 [--length N] [--number N] [--simple] [--output FILE]"
    echo
    echo "Options:"
    echo "  --length, -l N      Set password length (default: 12)"
    echo "  --number, -n N      Generate N passwords (default: 1)"
    echo "  --simple            Exclude symbols (only letters and numbers)"
    echo "  --output FILE       Save generated passwords to FILE"
    echo "  --help              Show this help message"
}

generate_password() {
    local length=$1
    local simple=$2
    local charset

    if [[ $simple -eq 1 ]]; then
        charset='A-Za-z0-9'
    else
        charset='A-Za-z0-9!@#$%^&*()_+=-'
    fi

    tr -dc "$charset" < /dev/urandom | head -c "$length"
}

check_strength() {
    local pwd="$1"
    local score=0

    [[ ${#pwd} -ge 12 ]] && ((score++))
    [[ $pwd =~ [A-Z] ]] && ((score++))
    [[ $pwd =~ [a-z] ]] && ((score++))
    [[ $pwd =~ [0-9] ]] && ((score++))
    [[ $pwd =~ [\!\@\#\$\%\^\&\*\(\)\_\+\=\-] ]] && ((score++))

    case $score in
        5) echo "🟢 Very Strong" ;;
        4) echo "🟡 Strong" ;;
        3) echo "🟠 Moderate" ;;
        2) echo "🔴 Weak" ;;
        *) echo "⚫ Very Weak" ;;
    esac
}

# Defaults
length=12
count=1
simple=0
output_file=""

# Parse args
while [[ $# -gt 0 ]]; do
    case $1 in
        -l|--length) length="$2"; shift ;;
        -n|--number) count="$2"; shift ;;
        --simple) simple=1 ;;
        --output) output_file="$2"; shift ;;
        --help) print_help; exit 0 ;;
        *) echo "Unknown option: $1"; print_help; exit 1 ;;
    esac
    shift
done

# Generate passwords
for ((i = 1; i <= count; i++)); do
    pwd=$(generate_password "$length" "$simple")
    echo "🔑 Password $i: $pwd"
    echo "   Strength: $(check_strength "$pwd")"
    [[ -n $output_file ]] && echo "$pwd" >> "$output_file"
done
