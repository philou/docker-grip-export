#!/bin/bash

set -e

usage() {
    echo >&2 "Please set filename"
    exit
}

if [ $# -eq 0 ]; then
    usage
fi

INPUT_FILE=${1}
if [ -f "${INPUT_FILE}" ]; then
    TGID=$(stat -c %g "${INPUT_FILE}")
    TUID=$(stat -c %u "${INPUT_FILE}")
    OUTPUT_FILE=${INPUT_FILE%.*}.html
    grip --gfm --export ${INPUT_FILE} ${OUTPUT_FILE}
    chown ${TUID}:${TGID} ${OUTPUT_FILE}
else
    usage
fi
