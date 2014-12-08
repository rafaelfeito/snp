#!/bin/bash

echo "## Basic actions: create,display and remove snippet from line"
./snp n testkey$$ "test text $$" 
[[ "$(./snp d testkey$$)" == "test text $$" ]] && echo "created snippet is equal to display" || echo FAILED: created snippet not found
./snp r testkey$$

echo

echo "## Basic actions: create,display and remove snippet from clipboard"
xsel -b --input <<< "text from clipboard $$"
./snp p testkey2$$ 
[[ "$(./snp d testkey2$$)" == "text from clipboard $$" ]] && echo "created snippet is equal to display" || echo FAILED: created snippet not found
./snp r testkey2$$
