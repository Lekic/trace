## The system can handle user CRUD

### Preconditions

The system supports user or administrator modification of accounts.

### Required for

The ability to create, read, update and delete user accounts.

### Description

Setting the framework for creating feral pest sightings and controlling permission levels is the core function of creating, reading, updating and deleting accounts. While all accounts can be read publicly (that is, seen by any other user of the app), the ability to control user accounts are granted to the owner of that account and administrators. Each user has the ability to create a new account as well as delete it. The user also has the ability to change certain settings on their account profile and their uploaded pest sighting details (update). This access is also granted to administrators, to be used in cases of emergency or prevention.

### Inputs

Username and password combination

### Process

Depending on the task selected, the process will be different. If the aim is to create a new account, the combination will be validated as explained in Requirement 1. If the task is to delete, the user will be asked for confirmation before being allowed to freely delete the account. Once confirmation is approved, the account will be deleted from the database with all sightings made anonymous. Finally, if the task is to update an account, then the user is taken to a page where they are able to freely modify account settings such as password, email or various miscellaneous options.

### Output

The account is created, deleted or updated.

### Exceptions

The user want changed any data, but it is not approved.

### Scope

The ability to create, update and delete accounts on the fly is a primary part of creating a dynamic and intuitive system. All users, existing and potential, are included in the scope of this requirement, as are Administrators.

### Technical issues

Making sure that the user has the permissions to create, update or delete their own account and not anyone else's is a major implementation issue that must be ensured. Giving Administrator's access to people's accounts (but limiting sensitive data like email or password) is also important to maintain privacy.

### Risks

The primary risk is an unauthorised user having access to another user's account settings, or a user finding a loophole to create an Administrator account to control other accounts.