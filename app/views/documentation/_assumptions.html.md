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