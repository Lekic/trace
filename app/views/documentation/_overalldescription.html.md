# Overall Description

## Product Perspective

The software system specified by this document is the Pest Tracking System for the NSW Parks and Wildlife Service. The system is a newly developed, first iteration system to join the current standing software suite used.

Being web-based, the system has to be able to incorporate completely with other components of the software suite, raising no issues or errors in the integration of the software. The system will be developed as a standalone with extensibility options throughout all tiers (UI, processing and data storage), to allow the Parks and Wildlife Services team to integrate the product as they desire.

For an overview of the overall system, refer to the Deployment Diagram and any other related diagram in the Appendix.

## Product Functions

The Pest Tracking System comprises of 4 subsystems that detail its core competencies: the pest, user, sighting, and reporting subsystems. The subsystems work interdependently are responsible for performing all pest, sighting and reporting functions. These functions together comprise the core functionality of the pest tracking system.

The pest subsystem provides the functionality to create, read, update and delete information on pests. The user subsystem, similarly, allows for the creation, reading, updating and deleting of all user information. The sighting and reporting subsystems allow for the creation, reading and updating of their respective content, though do not allow deletion.

The functionality is not given to all user levels. It is limited through a privilege level scheme, allowing certain operations to only be performed by administrators. This includes the updating of users, and the updating of information submitted by others.

## User Classes and Characteristics

The users will be able to select their class based on a large list of user types, each with their own permission levels. The user types will fall under either user or administrator depending on the type (i.e. Tour Guides are users while Park Staff are administrators). The account types are differentiated based on occupation, while the privileges are determined by the occupation relation to the system.

To secure the distribution of administrative access, users will have to be verify their identity before they can gain their administrator privileges (if applicable to the given user). This will be verified by the System Administrator.

The user classes are adapted from the provided data base schema, and categorised into administrators and users. The users within the system are as stated below:

* Administrators
	* Employee
* Users
	* Conservation Partner
	* Tour Operator
	* Volunteer
	* Fitness Trainer

The first iteration of the system will contain these classes. The variety will not be expanded at this time for ease of use, and all users who do not fit directly into one of the categories are considered volunteers.

It is most important that the system satisfies all users in direct contact with the Parks and Wildlife Service, while also satisfying the needs of all other users.

## Operating Environment

The software will be platform independent and work on desktop, tablet and mobile environments. It will work on all major operating systems (Windows, OS X, Linux), as well as all mobile platforms (iOS, Android, Blackberry). The minimum hardware requirements for the system are the same as for the browser that it is using, considering it will be a web-based application. Hence, both Intel and AMD CPUs, as well as both Nvidia and ATI graphics cards will be fully compatible with the system.

Some areas of the interface will respond quicker with a high-end graphics card as the animation processing is offloaded to the GPU, but this is not a requirement.

For detailed requirements of the system, check the system requirements of the web browser it will be used in.

## Design and Implementation Constraints

The software must comply with a minimum hardware requirement for each of the platforms it will operate on; meaning it should run fluidly on PC, tablet and mobile. The software system should be designed with the constraints of each of these operating systems in mind.

As well as hardware requirements, we have to cater for the dimensional constraints of the interfaces. We have to ensure we cater for the various screen sizes in a responsive and cohesive way, providing a fully featured system on all platforms.

The software, after being verified as completely functional, will be multilingual. The first iteration of the software will be an English-only system to ensure that all the core dependencies are fully operational. The primary concern of having a fully operational system supersedes the need for multiple languages for this particular software based on its user base.

All the data being transferred between the user and the system must be transmittable through Hypertext Transfer Protocol (HTTP) or File Transfer Protocol (FTP), as the system is web-based and they are the two protocols adopted by the team.

Traditional programming conventions will have to be maintained throughout the system, with adequate supporting documentation, as the system will be solely maintained by the Parks and Wildlife Service after development completion.

## User Documentation

The NSW Parks and Wildlife Service will be provided with various forms of documentation to support the system, as well as provide the users of the system with simple instructions to use the system. The supporting documentation includes:

* All development documentation including the requirements elicitation, system architecture, system design and rationale, meeting minutes, sprint retrospectives and project schedule.
* Thorough system documentation including class and method usage instructions and operation descriptions.
* Administrative documentation including installation guides for all system dependencies and operational guides detailing how to administer the system.
* User documentation both embedded into the website through means of on-hover information and help/support pages, as well as usage documentation supplied to the Parks and Wildlife Service.

## Assumptions and Dependencies

### System Assumptions

* Ruby on Rails scaffolds the database.
* Database dependency is implied through the dependency of Ruby on Rails.
* Users do not have to gain administrator approval to make a basic account.

### Data Assumptions

* A user is either assigned to a park if they are staff, or not if they aren’t. Hence, the park field can be null.
* A user can only be assigned to one park. Hence the 0 to 1 relationship.
* A user may only have one phone, but many addresses.
* The user must supply a phone and address.
* A pest can have multiple markings.
* The reporter must be documented in both the sightings and the report.

### System Dependencies

* Ruby
* Rails framework for Ruby (Ruby on Rails)
* Git