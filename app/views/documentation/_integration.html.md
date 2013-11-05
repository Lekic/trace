## Integration

Once testing models, we wanted to ensure the interrelations between models and their controllers. As we have implemented a relational database, it was vital that the system operated correctly with all its relations. To do this, we performed integration testing.

Integration testing was used in our project to test components with interrelations such as login, directing to pages through the controller, ensuring secure lines were used on sensitive pages, and checking that redirects took place when pages were accessed without the required privilege levels.

Once again, Rails automates this process through the use of a integration test class which can be seen on the slide above. As before, it is initiated with a simple command in the system shell.