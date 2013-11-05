## The system can accommodate various data types

### Preconditions

The user is logged in and has the necessary permissions to create, read, update and delete feral pest sightings. The user has opted to create a new entry. The user has captured feral pest data (images, video, etc.) and it's currently stored on the device.

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

The user has not collected any data relevant to the system. The user tries to upload files of illegal extension or type. The file upload fails on account of a bad connection. The user's data is too large to upload for a single sighting.

### Scope

The storage of various data types plays an important role in creating accurate information and integrity for each sighting. The more data types and information uploaded for each listing, the more accurate and informative the system will become. Therefore, this also plays an important role in the integrity of report generation. This generated information comes specifically from the users of this system, so the users who report sightings are the main component of this requirement.

### Technical Issues

There are many technical issues to consider for accepting various file types. The first and foremost is viruses - the range of data types must be limited in an attempt to prevent the introduction of viruses into the system. The second is file size - as the user may be uploading from a mobile device on a cellular data network, image compression or zipping may be necessary to upload large quantities of data to the system. The third technical issue is connection reliability - the system must be able to store data locally in case of a connection interruption so the user's data is not lost.

### Risks

Limited storage which resulted from insufficient storage space, low upload and download speed which resulted from the speed of bandwidth are limit, unavailable to store data which resulted from unknown types of data.