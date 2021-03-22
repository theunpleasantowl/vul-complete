#!/bin/sh

TEXT_REPO_ADDRESS=https://github.com/theunpleasantowl/clementinetextproject_text.git
TEXT_REPO_DIR=clementinetextproject_text

rm -rf $TEXT_REPO_DIR
git clone $TEXT_REPO_ADDRESS

# Remove Tabs in texts and delimit Chapter/Verse/Text by tab
find ./$TEXT_REPO_DIR -type f -name "*.lat" -exec sed -i 's/\t/:/g;s/:/\t/;s/\ /\t/' "{}" \;

# Apply Book Titles, Abbreviations, and Entry Number to Files
while IFS=, read -r file book; do
	n=$((n+1))
	sed -i "s/^/$book\t$file\t$n\t/" $TEXT_REPO_DIR/$file.lat
	cat $TEXT_REPO_DIR/$file.lat >> vul.latin1
done < book_metadata.csv

# Remove Potential Stray Characters
sed -i 's/\\//g;s/\///g;s/\r//g' vul.latin1
# Convert to UTF-8
iconv -f ISO-8859-1 -t UTF-8 vul.latin1 > vul.tsv

# Remove ligatures for better Terminal Compatibility
sed -i 's/æ/ae/g;s//oe/g' vul.tsv
