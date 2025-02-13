$DownloadsPath = [System.IO.Path]::Combine("C:\Users", $env:USERNAME, "Downloads")
$Extensions = @("pdf", "jpg", "png", "docx", "xlsx", "mp4", "zip", "doc", "xls", "ppt", "jpeg", "sh", "ps1", "py", "pptx", "exe", "cvs", "wav", "log", "mp3", "dotx","jfif", "mov", "csv") # Add more extensions if needed

# Get all files in Downloads (excluding system-related files)
Get-ChildItem -Path $DownloadsPath -File | ForEach-Object {
    $FileExt = $_.Extension.TrimStart(".")  # Get file extension without the dot
    if ($FileExt -in $Extensions) {
        $ExtFolder = Join-Path -Path $DownloadsPath -ChildPath $FileExt.ToUpper()

        # Create extension folder if not exists
        if (!(Test-Path $ExtFolder)) { New-Item -ItemType Directory -Path $ExtFolder }

        # Get file's creation date (use LastWriteTime if preferred)
        $FileDate = $_.CreationTime.ToString("yyyy-MM-dd")
        $DateFolder = Join-Path -Path $ExtFolder -ChildPath $FileDate

        # Create date-based folder if not exists
        if (!(Test-Path $DateFolder)) { New-Item -ItemType Directory -Path $DateFolder }

        # Move file to the appropriate folder
        Move-Item -Path $_.FullName -Destination $DateFolder -Force
    }
}
