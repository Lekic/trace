## Normalisation

Determining the optimal normalisation solution for the NSW Parks and Wildlife Pest Tracking System depends on a few key factors. To decide on the most suitable degree of normalisation, all levels have to be assessed in regards to how they fit our system requirements. For the proposed system, we deemed the following requirements to be most appropriate.

- The system must be maintainable
- Data should be stored in the simplest form
- The database should not hold redundant data
- Defining data should not rely on non-defiant data in other tables
- Update anomalies should not be able to occur within the database


When considering these requirements, three particular normal forms fit best:

- Second normal form (2NF)
- Third normal form (3NF)
- Boyce-Codd normal form (BCNF)

These three options fit well as they all occur after first normal form (1NF), at which stage all data is already stored as atomic values, meaning the data cannot be derived to a more primitive attribute. Though 1NF could be a viable option for normalisation, we believe that the system would benefit from being normalised further. To decide which option is best, we have to understand what benefits each level of normalisation offers.

### Second Normal Form

To qualify for second normal form, the table has to both meet 1NF, as well as meet the 2NF condition that 'no non-prime attribute is dependent on any proper subset of any candidate key of the table'. This means that within a table, there should be no field that is dependant on any other field within that same table.

An example of this would be an employee table where an employees name, address, and skills are recorded in a single table. If an employee has more than one skill, their address would subsequently be duplicated. To overcome this, 2NF would separate the two tables, having one table for employee details and another for employee skills that relates to the employee table through a primary key.

### Third Normal Form

To qualify for third normal form, relating tables have to abide by the relational conditions of 2NF, as well as the 3NF condition that states 'every non-prime attribute of the relation is directly dependent on every superkey of that relation'. What this means is that every non-key attribute must detail something about the key, and that key solely.

An example would be a table listing the winners of a tournament. If the table stored the tournament name, the year of the tournament, and the winner of the tournament with their date of birth, the player date of birth would inherit a functional dependency based on the winning year. Separating the tables into player details and tournament winners would remove all update anomalies.

### Boyce-Codd Normal Form

BCNF (sometimes called 3.5NF) provides slight improvements on 3NF. It states that for all functional dependencies (X→Y), the dependency must either be a trivial functional dependency, or X must be a superkey of the schema.

Consider a table detailing the shops nearest to you with fields user, shop type and shop. The shop type would have a functional dependency on the non-superkey 'shop'. This means the table is subject to anomalies and must be separated. A way to separate would be to have a table for the user and their closest shops, and another table with the shops and their types. This removes all update anomalies at BCNF level.

### Recommendation and justification

For the system at hand, it was deemed best to use the Boyce-Codd Normal Form (BCNF) for the reason that it provides the most reduced update anomalies, meaning it maintains the highest data integrity and lowest redundancy of the three options. Eliminating update anomalies means that as the system grows, there is a much lower risk of any issues with the data, and if a change needs to be made on a specific component (for example, changing the pest type of 'Dog' to 'Canine'), it would be as simple as changing one entry in a specific table, and all occurrences will update accordingly. BCNF also ensures that all tables only have one primary key, and all fields in the table detail only that single key (this is inherited from 3NF).

Normal forms go all the way to sixth normal form (6NF), but we believe BCNF is sufficient as anything beyond it focuses more on statistical analysis and intricate data mining. As this system does not hold a purpose to crunch the intricacies of the data input by users, the higher levels are not required. BCNF meets all the requirements of the system completely.