#!/bin/bash

set -ex

readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

CHROME_TABS_DIR="${CHROME_TABS_DIR:-.}"
CHROME_TABS_FILE="$(hostname -s)-$(date '+%Y.%m.%d-%H.%M.%S')-chrome-tabs.json"

osascript -l JavaScript > "${CHROME_TABS_DIR}/${CHROME_TABS_FILE}" <<EOF
var app = Application('Google Chrome');

let result = app.windows().map((w) => {
  return {
    'name': w.name(),
    'tabs': w.tabs().map((t) => {
      return {'title': t.title(), 'url': t.url()};
    }),
  };
});

JSON.stringify(result, null, 2);
EOF
