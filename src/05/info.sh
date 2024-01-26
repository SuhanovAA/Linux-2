#!/bin/bash

path=$1

start_time=$(date +%s)

# 1 point -> Total number of folders
total_folders=$(find "$path" -type d | wc -l)
echo "Total number of folders (including all nested ones) = $total_folders"

# 2 point -> TOP 5 folders of maximum size
total_folders=($(du -h $path | sort -nr | awk '{print $2}' | head -5))
total_folders_size=($(du -h $path | sort -nr | awk '{print $1}' | head -5))
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
for i in {0..4}; do
	if [[ -n ${total_folders[$i]} ]]; then
		echo "$[i+1] - ${total_folders[$i]}, ${total_folders_size[$i]}"
	else
		echo "There are no more files..."
		break
	fi
done

# 3 point -> Total number of files
total_files=$(find $path -type f | wc -l)
echo "Total number of files = $total_files"

# 4 point -> Number of cfg
conf_files=$(find $path -type f | grep .conf | wc -l)
text_files=$(find $path -type f | grep .txt | wc -l)
elf_files=$(find $path -type f -executable | wc -l)
log_files=$(find $path -type f | grep .log | wc -l)
archive_files=$(find $path -type f | grep -e .tar \
	-e .zip \
	-e .jar \
	-e .7z \
	-e .gz \
	-e .xar | wc -l )
link_files=$(find $path -type l | wc -l)

echo "Number of:"
echo "Configuration files (with the .conf extension) = $conf_files"
echo "Text files = $text_files"
echo "Executable files = $elf_files"
echo "Log files (with the extension .log) = $elf_files"
echo "Archive files = $archive_files"
echo "Symbolic links = $link_files"

# 5 point -> Top 10 files
max_file_10=$(find $path -type f -exec ls -sh {} \; | sort -hr | head -10)
index=0
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
while read -r line; do
	if [[ -n $line ]]; then
		path_f=$(echo "$line" | awk '{print $2}')
		size_f=$(echo "$line" | awk '{print $1}')
		type_f=$(echo "$line" | awk -F . '{print $NF}')
		index=$((index + 1))
		echo "$index - $path_f, $size_f, $type_f"
	else
		echo "There are no more files..."
		break
	fi
done <<<"$max_file_10"

# 5 point -> Top 10 executable
max_elf=$(find "$path" -type f -executable -exec ls -sh {} \; | sort -hr | head -10)
index_elf=0
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
while read -r line; do
	if [[ -n $line ]]; then
		path_elf=$(echo "$line" | awk '{print $2}')
		size_elf=$(echo "$line" | awk '{print $1}')
		hash_elf=$(echo $( md5sum "$path_elf" | awk '{print $1}' ))
		index_elf=$((index_elf + 1))
		echo "$index_elf - $path_elf, $size_elf, $hash_elf"
	else
		echo "There are no more files..."
		break
	fi
done <<<"$max_elf"

end_time=$(date +%s.%N)

#runtime=$(( $end_time - $start_time )) 
runtime=$(echo "$end_time - $start_time" | bc -l)
echo "Script execution time (in seconds) = $runtime"
