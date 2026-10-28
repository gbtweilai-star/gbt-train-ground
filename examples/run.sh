#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_train_ground info
PYTHONPATH=src python -m gbt_train_ground check --payload '{}'
PYTHONPATH=src python -m gbt_train_ground run   --payload '{}'
