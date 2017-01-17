A quick and simple powershell script to pull the basic windows data that PCI requires for compliance.

This simple script pulls the following data:

Application List - applications installed on the system along with version.
Service List - current services running on that system.
Process List - currrent processes running on that system.
Local Users List - List of all Users locally on that system (only includes users with account status OK, excludes Degrated)
Active Directory User List - This only produces data from the imported AD data and it is filtered for the following properties;   PasswordExpired, PasswordLastSet, PasswordNeverExpires)
Open Ports - Netstat info showing open ports on the system.

Once ran the script will create txt files to the specified directory.

**If you wish to save these text files in another directory please change in code**

Created by Versprite Team 2016
