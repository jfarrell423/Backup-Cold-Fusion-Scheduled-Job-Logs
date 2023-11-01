# A script that even Jeff Smith can understand
# Created by Jerry Farrell UTK OIT Department

# This script copies Cold Fusion Scheduled Tasks Logs
# and creates a folder in the destination named with the date of the files being copied.
# Get today's date and format it as MM-dd-yyyy-hh-mm-
# I decided not to do this level but keeping the command.
# Create new folder using today's date as name
# Command to create a unique directory
# New-Item -ItemType Directory -Path D:\Logs\$date

$date = Get-Date -Format "MM-dd-yyyy-hh-mm-"

# Get all log files in source directory
# Old Log Path
# $logfiles = Get-ChildItem -Path D:\inetpub\wwwroot\sunapsis\ioffice\batch\bat*.log
# New Log Path
$logfiles = Get-ChildItem -Path F:\iOffice\pdf\content\bat\*.log

# Loop through each log file found
Foreach ($logfile in $logfiles) {

# Get file name and append today's date to it
$logname = $logfile.Name
$destlogname = $date + $logname

# Copy file to destination directory, preserving original name with today's date appended

Copy-Item -Path F:\iOffice\pdf\content\bat\$logname -Destination D:\Logs\$destlogname
}

# Dear Jeff Smith this is the end of the script
# The End


# Dear Jeff Smith this is the end of the script
# The End
