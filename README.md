**NO-IP Command Automation**

Automate the process of updating your dynamic DNS (DDNS) records with your current external IP address using NO-IP's service. This Windows batch script allows you to keep your dynamic DNS hostname up-to-date without manual intervention.

**Features:**

- Retrieves your external IP address using ipinfo.io.
- Updates the dynamic DNS records on NO-IP with your current IP address.
- Creates a shortcut to run the automation script at startup for seamless operation.

**Usage:**

1. Modify the script to set your NO-IP credentials (USERNAME and PASSWORD), and domain (HOSTNAME)..
2. Ensure you have `curl` installed or replace it with an alternative command-line tool for fetching your IP address.
3. Run the script manually or create a shortcut to run it at startup.

**Note:**

- Make sure to escape special characters, like exclamation marks (!), with a caret (^) when setting your PASSWORD.
- The script assumes the location of your NO-IP automation script (`NOIP.bat`). Update the `NOIP_FILE` variable to the correct path if needed.
- The script creates a shortcut in the user's Startup folder for automatic execution at system startup. You can customize the shortcut name using the `SHORTCUT_NAME` variable.

Enjoy automated dynamic DNS updates with NO-IP!
