## Users must have the ability to log in to the system

### Preconditions

The user has a web browser installed with the basic capability to parse and render the web system. They have also already signed up for an account.

### Required for

Administrative or account-only functions (creating / deleting / updating entries).

### Description

The ability to log into the system is an essential feature of the system because without this feature, users will be unable to fully interact with our system. The system has been designed so that the majority of its functionality is only accessible to validated users with the appropriate user access level so.

An unauthenticated user can use the system for general sighting information and potentially limited reporting. However to access any of the systems advanced functionality such as generating reports and performing other administrative or account-based functions, the user must authenticate against the system by performing a user login. This would entail a single-factor authentication (i.e. providing a username and password). 

If a person using the system wants to access their account, access anything other than the general information and potentially generate reports (depending on their permission level), they must log in to the system with a username and password. Once they are logged in, they will have access to functions preserved for their permission level (i.e. adding sightings, adding/editing existing pest information, generating detailed reports, etc.).

To log into the system, the user must enter their username and password before clicking “login” (or equivalent) button on the system’s landing page. If the supplied username and password are incorrect (but the username exists), the user will be prompted with relevant error messages, informing them that their username or password is incorrect, while giving them the option to reset their details. However, if the username does not exist, the user will be prompted with a relevant error message that allows them to create a new account in this name. After several login attempts, the user’s IP address will recorded and refrained from login attempts into the system for the next hour. The user can still view the all the general information available to users without an account.

### Inputs

A username and password combination.

### Process

Navigate to the system using a web browser. Fill in the appropriate fields with a username and password combination. Submit details via. The login button. Wait for the system to validate and process the request.

### Output

Access to basic create, update and delete functionality for feral pest sightings and account settings.

### Exceptions

Username and password combination does not exist or the username or password fields are empty.

### Scope

The ability to log in is vital to the system as a whole as it protects unauthorised persons or those with lower permissions from accessing the core functions of the system reserved for administrators, such as report generation and system administrative actions. These core functions also refer to the ability to access sensitive user data, and thus a log-on process helps establish order within the system.

### Technical Issues

The logging-on and storing of account details raises a few technical issues, the primary one being password encryption. In order to prevent password leaks from the system or during transmission of details whilst logging on, the password will have to be encrypted. The second issue is related to granting permissions. The system must be cautious as to not assign administrative privileges to normal users, as the user may take advantage of their false privileges and commit breaches of privacy.

### Risks

The primary risk would be the leak of usernames and password combinations. Each account may contain sensitive details or administrative privileges that can give hackers a reason to attempt breaching security.