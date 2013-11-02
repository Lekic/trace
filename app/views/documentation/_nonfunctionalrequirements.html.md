# Other Non-functional Requirements

## Look and Feel

### Description

We have identified look and feel as one of the main non-functional requirements because we believe in the importance of creating a good first impression. We want users to look at our system and immediately feel comfortable and willing to interact with it. If the user closes the system because their initial impression is that it looks too confusing or it is not aesthetically pleasing, then the system has already failed. As our system is required to be accessible by several types of users ranging from farmers to national park rangers, our aim is to achieve a simple, intuitive and comfortable design that users from  different technical backgrounds will be comfortable with. 

The overall look of the system will be relatively professional (being a government-run system), however we’re aiming for a casual feel in terms of colour scheme, layout and general usage. This requirement also takes into account the fact that our system should be typically aesthetically pleasing. Consistent fonts, sizes, layout and colour schemes are integral to building a system with modern design standards. As this system is web-based, another primary concern of ours is handling a perfect responsive design. As the usage of our system is leaning more towards mobile devices (but also respects tablets and desktops), our interface must be built to handle every device resolution and look as structured as it does on desktops.

We have identified look and feel as one of the main non-functional requirements because we believe in the importance of creating a good first impression. We want users to look at our system and immediately feel comfortable and willing to interact with it. If the user closes the system because their initial impression is that it looks too confusing or it is not aesthetically pleasing, then the system has already failed. As our system is required to be accessible by several types of users ranging from farmers to national park rangers.

### Scope

The impression that users have when using the system is a major consideration to the system as a whole. It acts as a rough measure of how effective the new system is and how the users feel while using the product. The look and feel encompasses the whole front-end design.

### Technical issues

There are 2 main issues that arise when designing the look and feel of the system. The first is to be realistic, as its bad practice to develop an interface that’s almost impossible to build in code. The second is standards / compatibility - the system’s design has to respect the current technical standards and be compatible with as many devices as possible. Creating a design that takes a lot of processing power to render is bad practice as it will not perform well on mobile and tablet devices (which are an ever-increasing audience).

### Risks

A poorly designed interface with an uncomfortable feel will sway users from using the system and compromise the effort put into the rest of the project, resulting in decreased productivity and use of the app.

## Humanity and Usability

### Description

The new system is an auxiliary system, not a replacement system of the New South Wales Parks and Wildlife Department’s current infrastructure. Users who utilise the system won’t be hindered by a steep learning curve and will feel natural when using the system. Rather than replacing the current manual system, the new system must create an efficient workflow for the existing users to share, collaborate and learn. The main concern for this requirement is unbiased usability. The new system should feel like an extension of the manual system currently used and feel casual and natural, allowing existing users to immediately start using the new system with no training or technical expertise.

The system has to be usable to the system and user-friendly and usable by different people of multiple technical backgrounds. Any completely new and unprecedented features should be immediately understandable with the help section as a fallback. As an example, animal’s entries should be pre-tagged with certain characteristics to be identified rather than a specific identification name or code. This allows the user to specify the sighting without needing to know specific details of the animal such as its name. Identifying pests without having to know their specific names is a necessity when the user only knows certain features such as colour, size, animal, location, narrowing down the possible pest that the user encountered. This provides leeway for users who are not completely knowledgeable with the pests but still be able to contribute in a meaningful fashion to the system.

Furthermore, using the vague descriptions that the users have, the data entered into the system can still be considered valid and comprehensible by the back-end. The user is given a list of attributes to tick. Some options are greyed out and a dependant list picking style is used to narrow down the options. Once the correct pest has been narrowed down, it is selected by the users to be input into the system. Selecting the correct pest in the sighting maintains the integrity of the data entered into the system. Minimal data entry is also a requirement given by the current users for the new system. 

### Scope

Usability and humanity covers the front-end design of the system, but also the layout and architecture of the system.

### Technical issues

While we aim to create an unbiased, immediately understandable design, it is not possible to please all users with the design.

### Risks

The only risk is users believing that this system is too difficult to use and would rather manually report sightings. In relation to the example, users who have not provided sufficient information may be left with multiple options of pests. If the user opts to guess which pest they found, this may cause inaccuracies in the collective data.

## Legal Concerns and Open Source Code

### Description

We aim to use open source code and plugins throughout the design, development, implementation and maintenance of the software at hand. Having an open source arsenal of software means there are no surprise costs to the business such as having to pay for licensing rights both during and after the project (for potential maintenance).

### Scope

The use of open source and freeware will be implemented throughout the whole system to ensure that there is no extra cost to the business, unless the business desires otherwise.

### Technical issues

The main issue with open source and freeware is that it may not be as fully-fledged as the paid software. To overcome this issue we will have to find software most tailored to our requirements for planning, development and implementation.

### Risks

As with most open-source and freeware, there is a lack of support given; meaning we will have to self-educate on the workings of the system as well as be prepared to deal with any bugs that may present themselves.

## Performance

### Description

As the system is web-based, our aim is to create a system that runs smoothly regardless of platform. In order to reach a frame rate, transfer or otherwise speed target, we must rigorously test the system on a range of different devices, browsers, operating systems and firmware. The main concern for this requirement is response time in the fact that many people are using different hardware components or browsers. Slow page rendering may result from bad programming practices or complicated functions, however modern browsers (even on mobile devices) have the ability to route this processing to the GPU.

We have decided the performance of the system as one of main non-functional requirements because we want to build a system that can support all of different users’ situation and we want users to feel in our system that can run perfectly and smoothly even users’ internet speed in peak time or users have slow speed internet, and we also concerned that even users use old generation of devices, the system must have the ability to handle on it. 

Technical features aside, the system should provide the average response time. For example: 

* Millisecond responses feel instantaneous
* Less than 1 second responses invokes a feeling of quick response
* 1 - 5 second responses may be acceptable for the larger functions
* Over 5 second responses are unacceptable (for most front-end functions)

The system must also address performance requirements over a range of issues such as precision, reliability, availability, robustness and scalability. The last issue would arguably be considered the most important, as the system must be built with enlargement and growth in mind rather than a static concept.

### Scope

The performance relates to the feel and usability of the entire system. Users tend to feel more disconnected and uncomfortable using a system that runs slowly. Since the developments we make here can affect the system as a whole, the performance requirements are an absolutely integral part of designing a modern web system.

### Technical issues

There are a range of issues with performance, but only some we can address. For instance, the system must have the ability to support a significant amount of traffic. It must also have the ability to perform well on older browsers and operating systems in order to provide a well-rounded experience catered to all users.

### Risks

The main risks for this requirement is losing audience and causing crashes on account of a slow-performing system.

## Maintainability and Documentation

### Description

After completion of the system, maintenance and support will have to continue to take place. Our aim is to provide a system that has the smallest learning curve possible, through the use of an intuitive interface and clear, concise and easy to understand procedures and operations. To ensure that the system is easily understood, we will involve clientele that will be using the system in the design and testing phases both for their opinions and to have them learning the core dependencies of the system along the way. The majority of support will be based on the help documentation embedded in the system.

### Scope

The maintainability and support is relevant to the system as a whole as the system will be administered completely by the company. 

### Technical issues

None. The system should be fully functional by this time.

### Risks

The training on the system may be a hindrance depending on the ease of understanding by the appropriate staff.

## Security and Privacy

### Description

As the system is web-based, our aim is to protect the users by collecting only the standard and necessary personal information. When a user creates a new account, they are required to enter an email address, password and their full name. While the email address and full name are stored in plain text on the system, the password is encrypted using an algorithm (hashing or equivalent) to protect the anonymity of the user’s password, potentially across multiple sites. To protect the user from displaying their full name, they are required to select a username as well. Most of the security will be applied to the database, and protecting it from intruders, hackers or bots. It should have the ability to handle spam user registrations and comments by blacklisting registered IP addresses. Finally, the system will warn the users of potential threats and remind them that no financial or personal information will be asked via email.

Therefore, we believed that high level of security is not only an IT problem but it is also a business issue, we want to build the trust system that can make a positive impact of the long-term profits to our business. Trust system would give a good experiences to the users, and delivery IT solutions to the customers. It would also increases a number of users to use our system, all of these will result to the success of the company.

### Scope

All system components and users are covered by this requirement, however not the browsers, operating systems and machines by which the system is accessed.

### Technical issues

As previously mentioned, the database has to be secured and the password encrypted. Passwords have to be at least 8 characters long and contain the standard variations - one uppercase letter, one lowercase letter and one digit - to increase general password complexity on a per-user basis.

### Risks

The primary risk is a database intrusion, potentially revealing sensitive information for each user.

## Cultural and Political Concerns

### Description

As the system will be available to a wide range of people in Australia it is important to identify any cultural concerns in the system. The system could viably be used (if a user has the rights) to locate places with pests in which hunting is not banned. Reporting pests and storing information of the users (assuming non-disclosure of important details) is legal and has no negative ramifications. There are no known laws this system will interfere with, as it is a system being built to assist government recognised authorities.

The system must be intuitive and simple enough to cater to all users, regardless of culture or disability. While this will undoubtedly require extra time for the development of the system, it is a necessary task to ensure universal accessibility.

### Scope

These concerns may affect the users of the system. However due to the fact the system incurs no legal or political infringements, the only type of issue that might occur would be culturally dependent. Since Australia does not have a strong game hunting culture there should be no large scale issues due to this requirement.

### Technical Issues

Because of the different types of account restrictions, the only people who can exploit the system are admins to the system. Due to the nature of admins (Park rangers etc.) this kind of exploitation is highly unlikely.

### Risks

Hunting in Australia is already inhibited by reasonable strict laws, including requiring a permit from the game council. As of October 2012 a no-hunting program has been scheduled to begin in a number of national parks in Australia, which may inhibit the game culture.  Should any hunters wish to find a place where they may hunt certain pests, the system could potentially be used to find places they exist in which are not covered by the new hunting laws. Furthermore, from a user’s perspective, if the staff reject the new system, it will be deprecated and result in a decrease in productivity.

## Operational and Environmental Consideration

### Description

The first release of the system to be developed will be run from the provided UTS servers. Those servers must provide a maximum uptime to cater for all user’s presence, as well as the running of background processes. These include analytics, metrics, data mining and auditing. As for the environmental aspect, this mainly concerns the server storage room, and keeping the servers in a static-free, dust-free and secure environment.

### Scope

This requirement encompasses the installation and implementation of the system on the UTS servers. The need to revisit these considerations will arise near the end of the project.

### Technical Issues

As we are using the UTS servers to host our system, the most apparent issue is compatibility with hardware and software in the existing operational environment. As it’s a web system, however, the primary concern is running the system parallel with UTS’ other systems, so as not to disrupt their processes.

### Risks

The system could interfere with UTS’ existing systems. The system could interfere with the Parks and Wildlife systems. The server may go down as a result of hardware or software issues which may lead to a loss or corruption of data. Unauthorised access to the servers.