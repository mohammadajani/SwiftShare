# SwiftShare

Welcome to **SwiftShare**! This handy Bash script simplifies managing text files, allowing you to quickly insert and view text in a designated file. Whether you need to jot down quick notes or save longer entries, SwiftShare is designed to streamline your workflow.

## Why SwiftShare?

Have you ever found yourself SSHing into your Kali Linux VM or bare metal machine just to share text? The hassle of copying it to your phone via WhatsApp, Telegram, or email can be tedious. With SwiftShare, you can simply SSH into your machine, add your text, and access it easily—no more complicated processes!

## Features

- **Insert Text**: Add a single line, a paragraph, or a custom number of lines.
- **View Text**: Access recently added lines, specific line numbers, or view all content.
- **Custom File Path**: Use a specified file path or the default one at `~/Desktop/share_folder/text_recent`.

## Getting Started

### Prerequisites

- A Unix-like environment (Linux, macOS)
- Bash shell

### Installation

1. **Clone or Download SwiftShare**:
   Clone the repository or download the script file to your local machine.

2. **Make it Executable**:
   Open your terminal and navigate to the script's directory. Run:
   ```bash
   chmod +x swiftshare.sh
   ```

3. **Run SwiftShare**:
   Execute the script:
   ```bash
   ./swiftshare.sh
   ```
   Or specify a custom file path:
   ```bash
   ./swiftshare.sh /path/to/your/file.txt
   ```

### Usage

When you run SwiftShare, you’ll see a user-friendly menu. Here’s what you can do:

1. **Insert Text**: 
   - Add one line, a full paragraph, or multiple lines at once. Finish a paragraph with a blank line.

2. **View Text**:
   - Check the last 5 lines you added.
   - Specify line numbers to view custom entries.
   - Display all text in the file.

3. **Exit**: 
   - Choose to exit the script when you’re done.

### Example Workflow

1. Start the script.
2. Choose to insert a paragraph.
3. Type in your text and finish with a blank line.
4. Select to view the last 5 lines to see your recent additions.
5. Optionally, specify line numbers for specific entries.

### Notes

- If the specified file doesn’t exist, SwiftShare will create it along with any necessary directories.
- Change the default file path by providing a different path when starting the script.

## Troubleshooting

If you encounter any issues:

- Ensure you have permission to create or modify files in the specified directory.
- Check for syntax errors in your terminal.

## Contribution

Feel free to fork the repository and make improvements. Whether it’s adding new features, fixing bugs, or enhancing the code, your contributions are welcome!

## License

This project is licensed under the MIT License.

---

Now sharing text is as simple as SSHing into your machine with SwiftShare! Enjoy the convenience, and if you have questions or feedback, don’t hesitate to reach out. Happy sharing!
