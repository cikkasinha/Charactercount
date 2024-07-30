# Function to show an input box
function Show-InputBox {
    param (
        [string]$message = "Enter the server name:",
        [string]$title = "Server Name Input"
    )

    Add-Type -AssemblyName Microsoft.VisualBasic
    return [Microsoft.VisualBasic.Interaction]::InputBox($message, $title)
}

# Function to show a message box
function Show-MessageBox {
    param (
        [string]$message,
        [string]$title = "Character Count"
    )

    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.MessageBox]::Show($message, $title)
}

# Prompt the user to enter the server name
$serverName = Show-InputBox

# Count the characters in the server name
$charCount = $serverName.Length

# Show the result in a message box
Show-MessageBox -message "The server name '$serverName' has $charCount characters."