Users Login Date Logger

This script logs the users currently logged into the system and saves the data in a timestamped file within the users_login_date directory. 
The log includes the username, login date, and time.

users_login_date: Directory where login details are stored in files.
Project_1.sh: Script that logs user login data at regular intervals using crontab.

srcipt details:

Logging User Data
The Project_1.sh script uses the who command combined with awk to capture and log the following information:

Username
Date
Time

How the Script Works:
The script captures the current date and time and assigns it to a variable.
It runs the who command and processes the output using awk.
The data is saved in the users_login_date directory with the filename Users_<timestamp>.txt.


The script is scheduled using crontab to automatically log users' data at regular intervals:

* * * * * /home/ubuntu/Shell_Scripting_Project/Users_login_date  >> test.txt
this command runs the script every minute, appending the output to test.txt.

Make sure you have the necessary permissions to create files in the users_login_date directory.
Ensure the script is executable by running
