# Organize Downloads Folder by File Type and Date

This PowerShell script helps you keep your Downloads folder tidy by organizing files into folders based on their file type and creation date. It supports a wide range of file extensions and can be easily customized to include more.

## Features
- Organizes files by their extension (e.g., PDF, JPG, PNG).
- Creates subfolders based on the file's creation date.
- Supports a wide range of file extensions.
- Easily customizable to add more extensions.

## Usage
1. Download the script to your local machine.
2. Open PowerShell and navigate to the directory where the script is located.
3. Run the script using the following command:
    ```powershell
    .\OrganizeDownloads.ps1
    ```
4. The script will automatically organize your Downloads folder.

## Customization
You can customize the script by adding more file extensions to the `$Extensions` array. Simply edit the script and add the desired extensions.

```powershell
$Extensions = @("pdf", "jpg", "png", "docx", "xlsx", "mp4", "zip", "doc", "xls", "ppt", "jpeg", "sh", "ps1", "py", "pptx", "exe", "cvs", "wav", "log", "mp3", "dotx", "jfif", "mov", "csv")
