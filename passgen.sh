#!/bin/bash


# Author: Farzan Afringan
# License: MIT

# Simple password generator
LENGTH=16

# Generate password using /dev/urandom
PASSWORD=$(tr -dc 'A-Za-z0-9!@#$%&*_' < /dev/urandom | head -c $LENGTH)

echo "Generated password: $PASSWORD"
