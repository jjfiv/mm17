#!/bin/bash

set -eu

source /course/bin/setup
grep "SPEAKER" /course/data/shakespeare-xml/hamlet*.xml | stripxml | sort | uniq -c | sort -n

