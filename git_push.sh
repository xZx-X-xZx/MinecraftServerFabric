#!/bin/bash
git pull origin main
git add .
git commit -m "Automated commit at $(date +'%Y-%m-%d %H:%M:%S')"
git push origin main
