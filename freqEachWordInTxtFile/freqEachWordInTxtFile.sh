#!/bin/bash

# Read from words.txt, process the file, and output frequencies
awk '{ for(i=1; i<=NF; i++) print $i }' words.txt | sort | uniq -c | sort -nr | awk '{print $2, $1}'



# You can accomplish this task with a Bash script that utilizes awk, sort, and uniq commands. Here's a step-by-step breakdown of how the script works:

# Use awk to split the lines into words: The awk command processes the input file line by line, and for each line, it splits the line into words based on whitespace. It then prints each word on a new line.

# Sort the words alphabetically: This is necessary because uniq (used in the next step) requires that identical elements be adjacent in order to properly count their occurrences.

# Use uniq to count occurrences of each word: The -c option with uniq counts the number of occurrences of each line that was fed into it. Since the input is sorted, this effectively counts the occurrences of each word.

# Sort the output by frequency: Finally, the list of words and their frequencies is sorted. The sorting is done numerically (-n) and in reverse (-r) to ensure that the words are listed in descending order of their frequency.



# To run this script:

# Save the script to a file, for example word_freq.sh.
# Make the script executable with chmod +x word_freq.sh.
# Run the script by typing ./word_freq.sh.