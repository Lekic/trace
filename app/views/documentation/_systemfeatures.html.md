# System Features

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

## The system can accommodate various data types

### Preconditions

The user is logged in and has the necessary permissions to create, read, update and delete feral pest sightings. The user has opted to create a new entry. The user has captured feral pest data (images, video, etc.) and it’s currently stored on the device.

### Required for

Creating an accurate entry, complete with images, text and geolocation.

### Description

One of the main requirements of our system is to generate detailed reports. To achieve this goal we believe that the system should have the capability to accept and process a wide range of data types so that our system can gather and store data effectively. This gives the users the ability to make detailed sightings, which increases the quality of both the data and the generated reports.

Therefore, the storage of data has to be done in the most detailed way possible. To store data effectively, it is best to have as many data types as possible. For example, having text fields with schema limitations will allow for restricted text input and having images allows you to show photos of the particular pests in question. The system needs to have as many different accepted data types as possible to create an accurate listing of the pest, its location and its characteristics.

### Inputs

Text, images, coordinates, objects or some accepted data type.

### Process

User opts to create a new feral pest sighting. User is presented with an array of options for uploading data.

### Output

Data is stored on the web server and applied to the relevant sighting.

### Exceptions

The user has not collected any data relevant to the system. The user tries to upload files of illegal extension or type. The file upload fails on account of a bad connection. The user’s data is too large to upload for a single sighting.

### Scope

The storage of various data types plays an important role in creating accurate information and integrity for each sighting. The more data types and information uploaded for each listing, the more accurate and informative the system will become. Therefore, this also plays an important role in the integrity of report generation. This generated information comes specifically from the users of this system, so the users who report sightings are the main component of this requirement.

### Technical Issues

There are many technical issues to consider for accepting various file types. The first and foremost is viruses - the range of data types must be limited in an attempt to prevent the introduction of viruses into the system. The second is file size - as the user may be uploading from a mobile device on a cellular data network, image compression or zipping may be necessary to upload large quantities of data to the system. The third technical issue is connection reliability - the system must be able to store data locally in case of a connection interruption so the user’s data is not lost.

### Risks

Limited storage which resulted from insufficient storage space, low upload and download speed which resulted from the speed of bandwidth are limit, unavailable to store data which resulted from unknown types of data.

## The system can accommodate for different pest types

### Preconditions

The user has opted to create a feral pest sighting. The user has the appropriate access level to report a sighting. The type of pest the user is reporting is recognised and already within the system.

### Required for

Handling and organising different types of pests and pest sighting creation.

### Description

Whilst the user is in the process of creating a feral pest sighting, they are prompted to select a feral pest type. Initially the system will only have the functionality for the reporting of feral dog sightings, however this should be able to be expanded as needed to allow for a variety of different types of pest sightings to be reported. As the user may not know the exact pest type, this section ties in closely with usability and the intuitiveness of the system. Providing an alternative method of identifying the pest type based on colour, size and other attributes may prove easier in some cases than simply providing a list.

We have identified this as a requirement because to keep an accurate track of pests users will need to be able to specifically select what type of pest they saw. This is an important requirement because the system is required to keep track of a wide array of pests and provide detailed reports on their whereabouts and behaviour. Without this feature users will be therefore the system’s ability to accommodate for different pest types is essential to meeting this requirement.

### Inputs

Choice of feral pest type.

### Process

User opts to create feral pest sighting. User fills out the required fields before reaching the “pest type” attribute.

### Output

The sighting is entered into the system under the appropriate pest type.

### Exceptions

Primarily, if the user wants to report a pest that isn’t already in the system. Alternatively, the user may not know the exact pest type.

### Scope

The ability of the system to store multiple types of pests is the fundamental basis for this system. Without it, the system would have pest entries differentiation only by attributes. Solving this requirement properly, however, results in an increase of accuracy and precision in generated reports.

### Technical issues

The primary technical issue is creating a system wherein the number and range of feral pest types can be easily modified and scalable. The scalability of this system is a primary focus and it should allow for simple creation, reading, updating and deletion of each pest type.

### Risks

The only real risk with this section is making sure that each pest can be easily identified using the system. Having a stack of pest sightings with incorrect information is useless when attempting to generate accurate reports.

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

The username and encrypted password are validated. If the account has been created by an administrator, or someone with administrative clearance outside the system, the new account is granted administrative permissions. Alternatively, if the account already exists, a system administrator boosts the user’s permission level to Administrator or the equivalent.

### Output

The user account will have a new permission level.

### Exceptions

For the users using the system without an account they will have view-only privileges of pests and their sightings. The user may have a different permission level depending on specific job title e.g. Maintenance, support, etc.

### Scope

The differentiation between users is a primary factor of this, or any other large, system. It encompasses all users and attempts to segregate them into their appropriate permission-based groups in order to establish stability, security and hierarchy within the system.

### Technical issues

The only technical issue for this requirement is making sure the permission levels are scalable and not “hard-coded” to create new types of accounts later.

### Risks

The primary risk would be having users obtain or be given system privileges outside their jurisdiction. If this were to happen, the integrity of the data within the system could be compromised.

## The system can generate reports

### Preconditions

Organised data into its appropriate type and field. User is an administrator. User has access to report generation functions. There is enough information in the system to create a valid report.

### Required for

Extracting information that the department needs to make an informed decision of their next course of action.

### Description

The data on its own is merely a large array of numbers, dots on a map, dates, list of feral pests. However, to make sense of it, we can extract specific information based on a criteria. The New South Wales Parks and Wildlife Department want to know trends such as pest population number, whether pest population is changing base location as well as the pests range of daily movement. This information is extracted from the database depending on the query required. Due to the fact that we stored data into its appropriate types to the system, we can filter out relevant data as well as specific date ranges. 

### Inputs

A set of data (GUI or CLI based) that details the desired fields from the database (i.e. pests and any sub-information, sighting etc.).

### Process

User opts to generate report. User selects desired fields. User executes report generation.

### Output

Specified report generated.

### Exceptions

There is not enough information to generate a valid report. The user does not have report generation privileges.

### Scope

The ability for the system to generate reports is a fundamental basis for data collection and analysis. Generating reports means that administrators or other, high-level users have the ability to not only respond to pest sightings, but also graph out pest data over a period of time and (on a secondary nature), see the usage of the app.

### Technical issues

Generating reports should be data-focused, but this system aims to present this data in an intuitive fashion. This involves the integration, understanding and creation of algorithms and plugins that can generate visual data from the sightings in the database.

### Risks

There are no risks in actually generating the report, however there are risks in report validity and integrity due to misinformation and false sightings leading to incorrect statistics.

## The system can accommodate various types of sightings

### Preconditions

A pest is tracked or sighted. The user is logged in. The user has opted to create a sighting. User has relevant permissions to create a sighting.

### Required for

Pest sightings to be reported from a different number of sources and mediums.

### Description

Different types of pests require different methods of tracking. Therefore it is expected of the system to be able to register pest sightings from different sources such as GPS collars fitted onto pests, fixed infrared cameras, from farmers who have shot a pest, sightings of livestock attacks and overall general sightings and observations. Sightings from tracking devices and fixed infrared cameras are to be uploaded to the system automatically, while general sightings will be added to the system manually using the interface we build.

### Inputs

Raw data that is to be uploaded to the system automatically from tracking devices / cameras or data from sightings reported manually by a user.

### Process

If a pest is tracked or sighted on camera, data describing the pest’s location is uploaded to the system automatically. If pest is manually sighted, the sighting is either reported over the phone or the user opts to report the sighting themselves using the web system interface.

### Output

Pest sightings are recorded into the system from different types of sources.

### Exceptions

On a fairly low probability, the user wants to create a pest sighting using a medium that is not offered by the interface. However, it’s likely that most mediums will fall under the general category of “manually reported user sightings”.

### Scope

The system’s capability to accept sightings and reports from various mediums and sources is one of the most fundamental aspects of the system. It is imperative that the system is able to work seamlessly with the existing methods of pest tracking so that the workflow of Parks & Wildlife is not disrupted. This means that users of the existing manual system must be able to incorporate this new web system into their workflow.

### Technical issues

The only real technical issue is creating the system so the various methods of recording pest sightings can be increased or modified over time. The automatic uploading of data from infrared cameras and GPS collars is not bundled with the system automatically due to technical skill levels and time constraints.

### Risks

There are no real risks for this requirement.

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

Making sure that the user has the permissions to create, update or delete their own account and not anyone else’s is a major implementation issue that must be ensured. Giving Administrator’s access to people’s accounts (but limiting sensitive data like email or password) is also important to maintain privacy.

### Risks

The primary risk is an unauthorised user having access to another user’s account settings, or a user finding a loophole to create an Administrator account to control other accounts.

## The system can handle pest sighting CRUD.

### Prerequisites

The user is logged in. The user has opted to create a feral pest sighting. The user has appropriate data to add to the sighting.

### Required for

The ability to create, read, update and delete pest sightings.

### Description

The fundamental task of this system is to record various feral pest sightings. The ability to create new sightings, and well as update, read and delete existing sightings is core to creating a dynamic data-collection and reporting system. Each user (general and administrator) have access to create feral pest sightings. While users are free to read existing sightings, they must submit a modification request to an administrator if they wish update or delete an existing sighting. This prevents users from randomly deleting sightings, or updating them with false information. Each request must be approved by an administrator, or any equivalent user with permissions to resolve requests.

### Inputs

For creating and updating feral pest sightings, appropriate data is inputted. For deletion of a feral pest sighting, there is no input data.

### Process

For creating a feral pest sighting, the user enters the appropriate data into their respective fields and attaches any accepted media that supports the sighting. They review the sighting and then click OK to submit it. For modifying an existing feral pest sighting, the process is much the same as creation, however the fields are pre-filled with the existing information. Submitted changes to any of these fields results in a request being sent to an administrator. For deletion of an existing feral pest sighting, the user fills out a quick form explaining the reason for wanting to delete the sighting which is then sent as a request to an administrator.

### Output

A new sighting has been created, or an existing sighting has been modified or deleted.

### Exceptions

The user submits a change request, but it is not approved. The user doesn’t click the “submit” button to finalise changes. The user discards their changes to an existing sighting.

### Scope

The ability to create, delete and update feral pest sightings is, as mentioned, the fundamental requirement of this system. This requirement takes into account the actions of the user and the administrators to create a dynamic and evolving data-collection system.

### Technical issues

Making sure the system runs smoothly and has the ability to flawlessly create, modify and delete feral pest sightings without causing inconsistencies or errors.

### Risks

Unauthorised users having the ability to modify or delete sightings without proper clearance or request submission.