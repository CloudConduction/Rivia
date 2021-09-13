### Splatting

# Set variable for new file
$FilePath1 = 'c:\Rivia\File.txt'
$FilePath2 = 'c:\Rivia\File2.txt'

$UpdateFileArguments = @{
    Path = "$FilePath1"
    Value = "This text will be input into the file"
  }

# Create new text file
New-Item $FilePath1

# Set variable for content of File1 from the splatted arguments
Set-Content @UpdateFileArguments

# Read from the created file
Get-Content $FilePath1

# Create Hashtable for command arguments
$CopyFileArguments = @{
    Path = "$FilePath1"
    Destination = "$FilePath2"
    WhatIf = $false
  }

# Copy file with the splatted arguments
Copy-Item @CopyFileArguments

# Read from the copied file
Get-Content $FilePath2
