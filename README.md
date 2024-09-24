Create Directory and Catch Login Details of Users: A directory is created to store login details of users. A script uses the who command to capture and log current user login information, saving it to a file. This can be scheduled with crontab to run at set intervals.

Get the List of AWS Resources and Set a Crontab Scheduler: A script fetches the list of AWS resources like EC2 instances and S3 buckets using AWS CLI. It's set to run automatically at regular intervals using crontab, ensuring up-to-date tracking of resources.

Get the List of Users and Collaborators for a Repository: This script retrieves the list of users and collaborators from a GitHub repository. It helps track and manage who has access to the repository, ensuring proper collaboration monitoring.

Script to Install Packages Using Functions: A script is written with functions that check if packages are installed. If not, the script installs them using a package manager (like apt). Functions make the code more modular and reusable.

Created a Database Backup File: A script automates the backup of a MySQL database, storing the backup files with timestamps. It also removes old backups after 7 days to save space, ensuring regular backups and data security.
