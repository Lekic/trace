## The system can accommodate for different pest types

### Preconditions

The user has opted to create a feral pest sighting. The user has the appropriate access level to report a sighting. The type of pest the user is reporting is recognised and already within the system.

### Required for

Handling and organising different types of pests and pest sighting creation.

### Description

Whilst the user is in the process of creating a feral pest sighting, they are prompted to select a feral pest type. Initially the system will only have the functionality for the reporting of feral dog sightings, however this should be able to be expanded as needed to allow for a variety of different types of pest sightings to be reported. As the user may not know the exact pest type, this section ties in closely with usability and the intuitiveness of the system. Providing an alternative method of identifying the pest type based on colour, size and other attributes may prove easier in some cases than simply providing a list.

We have identified this as a requirement because to keep an accurate track of pests users will need to be able to specifically select what type of pest they saw. This is an important requirement because the system is required to keep track of a wide array of pests and provide detailed reports on their whereabouts and behaviour. Without this feature users will be therefore the system's ability to accommodate for different pest types is essential to meeting this requirement.

### Inputs

Choice of feral pest type.

### Process

User opts to create feral pest sighting. User fills out the required fields before reaching the "pest type" attribute.

### Output

The sighting is entered into the system under the appropriate pest type.

### Exceptions

Primarily, if the user wants to report a pest that isn't already in the system. Alternatively, the user may not know the exact pest type.

### Scope

The ability of the system to store multiple types of pests is the fundamental basis for this system. Without it, the system would have pest entries differentiation only by attributes. Solving this requirement properly, however, results in an increase of accuracy and precision in generated reports.

### Technical issues

The primary technical issue is creating a system wherein the number and range of feral pest types can be easily modified and scalable. The scalability of this system is a primary focus and it should allow for simple creation, reading, updating and deletion of each pest type.

### Risks

The only real risk with this section is making sure that each pest can be easily identified using the system. Having a stack of pest sightings with incorrect information is useless when attempting to generate accurate reports.