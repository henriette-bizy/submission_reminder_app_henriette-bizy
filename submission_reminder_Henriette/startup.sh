#!/bin/bash

# Print a welcome message
echo "Starting Submission Reminder App..."

# Source the configuration file
source config/config.env

# Source the functions script
source modules/functions.sh

# Display the app name and version
echo "App Name: STUDENTS REMINDER APP"
echo "App Version: V1"

# Run the reminder script
bash ./app/reminder.sh

# Call the check_deadlines function from functions.sh
check_submissions "./assets/submissions.txt"

# Display the list of submissions
echo "Current Submissions:"
cat ./assets/submissions.txt

# Print a closing message
echo "Submission Reminder App has finished running."
