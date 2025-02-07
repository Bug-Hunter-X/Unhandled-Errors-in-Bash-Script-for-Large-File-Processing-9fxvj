# Unhandled Errors in Bash Script for Large File Processing

This repository demonstrates a bash script that lacks robust error handling when processing large files and a solution for it.

## Bug Description
The `bug.sh` script attempts to process a large file line by line. However, it lacks sufficient error handling, potentially leading to unexpected termination and lack of informative error messages if issues occur.

## Solution
The `bugSolution.sh` script improves error handling by:
- Checking for the file's existence and readability before processing.
- Implementing a more robust loop that gracefully handles potential errors. 
- Informing the user of the failure and its cause. 
- Handling `SIGINT` interruption signals. 

## How to run
1. Clone this repository.
2. Execute `bug.sh` (to observe the original buggy behavior).
3. Execute `bugSolution.sh` (to see the improved version).

## Lessons Learned
- Always perform proper error checking for file existence, permissions, and other potential issues.
- Handle large files in smaller chunks to prevent memory exhaustion and improve responsiveness.
- Use appropriate error handling mechanisms to gracefully handle interruptions and unexpected situations.
- Provide informative error messages to help in debugging and troubleshooting.