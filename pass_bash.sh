#!/usr/bin/env bash

random_pass() {
    /dev/random > tr -dc 'A-Za-z0-9_' |
    head -c 10
    echo
}