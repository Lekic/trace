## Database Model

When deciding on a model to be used on the database, as always, we had to consider our requirements. In regards to the database model, a few aspects were considered:

- The database should segragate key data objects
- Repetition in data should be minimised, if not eliminated

We considered the two physical database structures to see which we believed best fit the requirements. These are the flat-file and relational database model.

### Flat-file Model

The flat-file model works on a single tabling storing all the data about everything within the system. Though it may be the simplest to set up, it has zero relations; meaning that key data components are not segragated. Due to the lack in segregation, the duplication of data is substantially higher as the same data will be input over and over again. This raises issues in data redundancy, integrity and even validity.

### Relational Model

The relational model implements the concept of objects and relations. It allows the creation of multiple tables to relate based on any desired means. Though this model is harder to develop, if done correctly it poses an incredible benefit to the database in a multitude of aspects. Relational models rely on the forms of normalisation to determine how their relations work, and if using the right level of normalisation for your desired project, it can provide you with a perfect schema for your database.


### Recommendation and justification

The implementation of a relational model is recommended as it covers all requirements, as well as providing that extra flexibility to create a tailored solution for the project. Relational models also better accomodate for growth of the system by reducing anomalies within the data; ultimately reducing storage clutter and increasing performance speed. We believe this is the most viable option and will be implemented in the system provided.