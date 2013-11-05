## Regression

To perform the regression testing, we ensured after all functional implementations that the system maintained its functionality in regards to all requirements. We do this in two stages. Thanks to rails, we can use the same test cases over and over as they are saved in the ‘test’ folder of the system. To test new components we create individual unit tests, followed by unit tests that test their interdependencies, which shows whether their relations remain in tact.

As well as testing through automation, it is integral to try and break the system through actual interaction. We have gotten users to simply try and perform every possible task on the system until it breaks. Since this process is more manual, we asked the users to write notes on their experience including any potential bugs, which we then confirmed and compiled into a list of issues to be fixed.

Once testing models, we wanted to ensure the interrelations between models and their controllers. As we have implemented a relational database, it was vital that the system operated correctly with all its relations. To do this, we performed integration testing.