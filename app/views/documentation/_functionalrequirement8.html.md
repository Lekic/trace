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

The user submits a change request, but it is not approved. The user doesn't click the "submit" button to finalise changes. The user discards their changes to an existing sighting.

### Scope

The ability to create, delete and update feral pest sightings is, as mentioned, the fundamental requirement of this system. This requirement takes into account the actions of the user and the administrators to create a dynamic and evolving data-collection system.

### Technical issues

Making sure the system runs smoothly and has the ability to flawlessly create, modify and delete feral pest sightings without causing inconsistencies or errors.

### Risks

Unauthorised users having the ability to modify or delete sightings without proper clearance or request submission.