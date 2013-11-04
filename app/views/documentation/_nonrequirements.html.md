## Non-Requirements (out of scope) (NEEDS REWORDING)

Register User

    Acceptance Criteria
Information from the form is stored in the database.
A user cannot submit a form without completing all the mandatory fields.
Name + either phone/DoB
A temporary ID may be placed and changed later if employee ID is not available
Correct input for each field is required or account cannot be created. If incorrect input is entered, the system will return an error message next to the appropriate field
Password(var type password)- case sensitive and must be at least 8 characters including 1 special character.
Name(var type string) must contain only alphabetic character, maximum of 40 characters
DoB(var type date)- can be selected from a calender. If entered manually, must be in DD/MM/YYYY format
Phone Number-if user has decided to enter phone number, all of the following must be filled out before proceeding 
Country(drop down menu)
Area code(var type int) - maximum of 2 characters. 
Phone number(var type int) maximum of 8 characters.  
If all the above criteria is met, an account will be created for the user to access the system.

Login User

     Acceptance Criteria
An account must be registered before it can access the system.
A user cannot submit the login form without entering both user ID or password.
Passwords are case sensitive must be at least 8 characters including 1 special character.

Register pest record

     Acceptance Criteria
Intended pest must not already be in the system
The type of pest should already be in the system(coded in the back-end)
All fields are mandatory
Correct input for each field is required or pest cannot be created. If incorrect input is entered, the system will return an error message next to the appropriate field
Pest ID - only needs to be entered if an ID source has been chosen
ID Source- mandatory drop down selection
Pest Name (var type string) - mandatory, alphabetical characters only, maximum of 40 characters
Pest Type- mandatory drop down selection
Pest Characteristics- mandatory textbox which accepts any type of input ( numeric, alphabetical etc)
If all the above criteria is met, a new type of pest is added to the system
Update pest record

     Acceptance Criteria
Intended pest must already be registered in the system
When submitting the edit, all fields must still contain the correct input still or else the system will return an error message next to the appropriate field/s
If the correct input is contained in the fields when submit is pressed, the system will apply the changes to the pest record
Register pest sighting

     Acceptance Criteria
The type of pest should already be in the system(coded in the back-end)
All fields are mandatory
Correct input for each field is required or pest cannot be created. If incorrect input is entered, the system will return an error message next to the appropriate field
Pest- mandatory drop down
Sighted by - auto filled with the user ID
Date/Time Sighted - 
National Parks
Location
Amount of pests sighted
Additional Information
If all the above criteria is met, a new type of pest is added to the system
Update pest sighting
     Acceptance Criteria

Ad hoc pest record inquiry 
     Acceptance Criteria

Ad hoc pest sighting inquiry 
     Acceptance Criteria


Search export 

     Acceptance Criteria


Weekly Management report

     Acceptance Criteria


Delete User

     Acceptance Criteria


Delete Pest Record

     Acceptance Criteria


Delete Pest Sighting 

     Acceptance Criteria
