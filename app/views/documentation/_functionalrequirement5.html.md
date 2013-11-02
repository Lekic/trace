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