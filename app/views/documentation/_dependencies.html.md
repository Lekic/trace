## Functional Dependencies

The functional dependencies of the system are heavily reliant on the normalisation techniques used. As the functional dependencies are illustrations of the relation between keys and non-keys, the normalisation technique will determine the segregation of the fields.

As discussed above, the Pest Tracking System will be normalised to Boyce-Codd Normal Form. This means that all the functional dependencies will be reduced to a level that:

* Each right set of a functional dependency contains only one attribute.
* Each left set of a functional dependency is irreducible. It means that reducing any one attribute from left set will lose information of the dependent.
* Reducing any functional dependency will change the content of the dependent.

The functional dependencies for the Pest Tracking System are as follows:

* UserID → Name, DateOfBirth, DateJoined, ContactNumber, Address, UserType, Park
* UserTypeID → UserType
* AddressID → StreetNumber, StreetName, Suburb, State, Postcode
* PhoneID → CountryCode, AreaCode, Number, PhoneType, Comment
* PhoneTypeID → PhoneType
* StateID → State
* SuburbID → Suburb
* ParkID → Park, Area
* AreaID → Area
* PestID → Name, Source, Tracker, PestType, Characteristics, Colour, Size
* ColourID → Colour
* MarkingID → Marking
* PestTypeID → PestType
* SourceID → Source
* SightingID → Pest, Quantity, Park, TimeSighted, Information, User
* ReportID → Name, User, StartDate, EndDate, DateCreated

These functional dependencies were created based two key factors:

* The implementation of Boyce-Codd Normal Form
* Integration with pre-existing systems currently connected to the old pest tracking system

To ensure the proposed system is has the capability to both take in the data from the old system, as well as integrate with other systems already in place, it was crucial that the database schema was maintained and enhanced rather than changed. Due to the correct adaption of these requirements, we believe the functional dependencies provide the best fit for the system.