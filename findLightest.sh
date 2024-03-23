#!/bin/bash
awk '{print $1}' out1.csv out2.csv out3.csv | sort -n | head -n1 > out
