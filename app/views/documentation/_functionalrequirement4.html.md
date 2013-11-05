## The system can accommodate various permission levels

### Preconditions

The system must have the user account feature working. The accounts are given permissions by a higher authority. The account must already exist. Administrators can both administer the database as well as users. Certain permission levels allow for the modification of lower permission level accounts (administrators can modify aspects of basic accounts, etc.)

### Required for

Providing multiple types of users to restrict access depending on clearance.

### Description

The system that will be put in place will be relatively large and, due to this, will have multiple operations taking place within itself. To ensure the integrity of the system, there will have to be multiple tiers of users with some have elevated privileges. This allows for select Parks and Wildlife Department staff to have full control of the system, while other staff may have some elevated privileges, and general users will have the ability to add entries and edit those they have created, but not others. Accounts can either be promoted or demoted.

This is an important requirement for the system because it is a government run system which will be used for inputting and processing important data. Because of this varying user permission levels is essential to ensure that only trusted users are capable of submitting pest sightings and that the system can be maintained and monitored by administrators. By implementing this feature we will be able to greatly increase the integrity of the system, thus improving the accuracy of any data that is coming through the system.

### Inputs

Username and encrypted password combination (most permission allocations occur during account creation).

### Process

The username and encrypted password are validated. If the account has been created by an administrator, or someone with administrative clearance outside the system, the new account is granted administrative permissions. Alternatively, if the account already exists, a system administrator boosts the user's permission level to Administrator or the equivalent.

### Output

The user account will have a new permission level.

### Exceptions

For the users using the system without an account they will have view-only privileges of pests and their sightings. The user may have a different permission level depending on specific job title e.g. Maintenance, support, etc.

### Scope

The differentiation between users is a primary factor of this, or any other large, system. It encompasses all users and attempts to segregate them into their appropriate permission-based groups in order to establish stability, security and hierarchy within the system.

### Technical issues

The only technical issue for this requirement is making sure the permission levels are scalable and not "hard-coded" to create new types of accounts later.

### Risks

The primary risk would be having users obtain or be given system privileges outside their jurisdiction. If this were to happen, the integrity of the data within the system could be compromised.