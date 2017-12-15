#!/usr/bin/env bash

echo Starting Script 3

cd criu/lib/go && sudo make && cd 
cd criu/phaul/ && sudo make && cd
