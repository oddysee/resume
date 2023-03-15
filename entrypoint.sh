#!/bin/sh -l

DEFAULT_THEME=even
DEFAULT_THEME_VERSION=0.6.0
DEFAULT_RESUME=/app/resume.json
DEFAULT_OUTPUT=/app/docs/index.html

THEME=${1:-$DEFAULT_THEME}
THEME_VERSION=${2:-$DEFAULT_THEME_VERSION}
RESUME=${3:-$DEFAULT_RESUME}
OUTPUT=${4:-$DEFAULT_OUTPUT}

THEME_PACKAGE=jsonresume-theme-${THEME}@${THEME_VERSION}
echo "Installing theme: ${THEME}"

# NOTE: this needs to be installed locally, not globally
npm install ${THEME_PACKAGE}

resume export --resume ${RESUME} --theme ${THEME} --format html ${OUTPUT}