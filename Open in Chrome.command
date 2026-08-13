#!/bin/bash
# Opens index.html in Google Chrome.
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
open -a "Google Chrome" "$DIR/index.html"
