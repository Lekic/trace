## Security

### Description

As the system is web-based, our aim is to protect the users by collecting only the standard and necessary personal information. When a user creates a new account, they are required to enter an email address, password and their full name. While the email address and full name are stored in plain text on the system, the password is encrypted using an algorithm (hashing or equivalent) to protect the anonymity of the user's password, potentially across multiple sites. To protect the user from displaying their full name, they are required to select a username as well. Most of the security will be applied to the database, and protecting it from intruders, hackers or bots. It should have the ability to handle spam user registrations and comments by blacklisting registered IP addresses. Finally, the system will warn the users of potential threats and remind them that no financial or personal information will be asked via email.

Therefore, we believed that high level of security is not only an IT problem but it is also a business issue, we want to build the trust system that can make a positive impact of the long-term profits to our business. Trust system would give a good experiences to the users, and delivery IT solutions to the customers. It would also increases a number of users to use our system, all of these will result to the success of the company.

### Scope

All system components and users are covered by this requirement, however not the browsers, operating systems and machines by which the system is accessed.

### Technical issues

As previously mentioned, the database has to be secured and the password encrypted. Passwords have to be at least 8 characters long and contain the standard variations - one uppercase letter, one lowercase letter and one digit - to increase general password complexity on a per-user basis.

### Risks

The primary risk is a database intrusion, potentially revealing sensitive information for each user.