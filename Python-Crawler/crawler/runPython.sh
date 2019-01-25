#!/bin/sh


python /usr/src/app/models.py
python /usr/src/app/crawler.py start
python /usr/src/app/export.py

