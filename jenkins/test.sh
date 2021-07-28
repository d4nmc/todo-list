#!/bin/bash

# LINES OF CODE WHICH RUN THE SCRIPY AND PRODUCE REPORTS
# source venv/bin/activate THIS HAS TO BE RUN AGAIN AS THE VENV DOESNT KEEP GOING AFTER THE INSTALL.SH

source venv/bin/activate
python3 -m pytest --cov=application --junitxml=junit/test-results.xml --cov-report=xml --cov-report=term-missing