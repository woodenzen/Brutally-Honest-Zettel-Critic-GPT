#!/bin/bash

file="/Users/will/Dropbox/Projects/Zettel GPT/Zettel-Critique-Assistant-GPT/GPT-instructions.md"
word_count=$(wc -w < "$file")
word_count=$(($word_count *2)) 

echo "The token count for this GPT is about: $word_count out of 8192 tokens."

# RUN
# . ./tokencount.sh