#!/bin/bash

# Default share file path
DEFAULT_PATH="$HOME/Desktop/share_folder/text_recent"

# Use the provided path or fall back to the default
SHARE_FILE="${1:-$DEFAULT_PATH}"

# Create the file if it doesn't exist
mkdir -p "$(dirname "$SHARE_FILE")"  # Ensure the directory exists
touch "$SHARE_FILE"

while true; do
    echo "Choose an option:"
    echo "1. Insert text"
    echo "2. View text"
    echo "3. Exit"
    read -p "Enter your choice (1-3): " choice

    case $choice in
        1)
            echo "Choose the type of text to insert:"
            echo "1. Insert 1 line"
            echo "2. Insert a paragraph"
            echo "3. Insert custom number of lines"
            read -p "Enter your choice (1-3): " insert_choice

            case $insert_choice in
                1)
                    read -p "Enter the line: " line
                    echo "$line" >> "$SHARE_FILE"
                    ;;
                2)
                    echo "Enter your paragraph (end with a blank line):"
                    while IFS= read -r paragraph_line; do
                        [[ -z "$paragraph_line" ]] && break
                        echo "$paragraph_line" >> "$SHARE_FILE"
                    done
                    ;;
                3)
                    read -p "How many lines do you want to insert? " num_lines
                    for ((i=1; i<=num_lines; i++)); do
                        read -p "Enter line $i: " line
                        echo "$line" >> "$SHARE_FILE"
                    done
                    ;;
                *)
                    echo "Invalid choice!"
                    ;;
            esac
            ;;
        2)
            echo "Choose how to view the text:"
            echo "1. Recently added lines (last 5 lines)"
            echo "2. Custom lines (specify line numbers)"
            echo "3. All lines"
            read -p "Enter your choice (1-3): " view_choice
            
            case $view_choice in
                1)
                    echo "Recently added lines:"
                    tail -n 5 "$SHARE_FILE"
                    ;;
                2)
                    read -p "Enter the line numbers you want to view (comma-separated, e.g., 1,2,5): " line_numbers
                    IFS=',' read -r -a lines_array <<< "$line_numbers"
                    echo "Custom lines:"
                    for line_num in "${lines_array[@]}"; do
                        sed -n "${line_num}p" "$SHARE_FILE"
                    done
                    ;;
                3)
                    echo "All lines:"
                    cat "$SHARE_FILE"
                    ;;
                *)
                    echo "Invalid choice!"
                    ;;
            esac
            ;;
        3)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice! Please try again."
            ;;
    esac
done
