## Database Design Thesis

### Language and Framework
In deciding the languages and framework to implement through the system, we had to consider the requirements we had in place. We had to consider scalability, flexibility, security and functionality.

After assessing these requirements, we had decided to adopt the Ruby coding language with the Rails framework; also known as Ruby on Rails, as it offers a great deal of benefits over other server side languages that we believe suits the project, such as CakePHP and Symfony.

### Scalability
When we talk about a scalable system, we refer to its ability to grow in a capable manner, maintaining its efficiency and effectiveness. Due to the inevitable growth of the Pest Tracking System, it was a definite that the system had to be scalable. The Ruby on Rails framework enforces the use of a Model View Controller architecture, ensuring the system completely separates the information from the user interface; having them communicate through control triggers. MVC architecture ensures design is not tarnished as system size increases. The use of MVC also ties in to system flexibility.

### Flexibility
Flexibility of a system relates to the potential to modify interdependent components indepently. This basically means that if you change the interface, it should not affect other parts of the system. MVC also caters for this. Having the model, view and controller as independent components allows us to change any given component freely without modifying other components. It also allows for errors to be easily located as you can determine where the error lies depending on what kind of error it is.

The client receives significant benefits from implementing a MVC architecture. Having a scalable system allows the Parks and Wildlife Service to expand their system’s server architecture and information without concerns of loss of information. Designing the system in a flexible and modular process allows the Parks and Wildlife Service to have separate teams working on different components of the system freely, with a much lower concern for potential operational conflict within the system.

### Security
As well as being scalable and flexible, we need the system to be secure. The system will be storing various forms of sensitive information; including passwords, and other personal information such as names, numbers and addresses. To ensure all the information is secure we need to apply encryption to the database, as well as key attributes. In regards to the encryption of the actual database, it will be handled by the database itself. However, the passwords we have to actually encrypt our data before we store it. In regards to passwords, we can’t store them simply as plain text. The encryption of user input is performed by Ruby, and the greatest benefit is we can choose which encryption method we want from the library.

The added levels of security benefits the customer by both having their data safe, as well as giving the users of the system a sense of safety and comfort in using the system, knowing their information is safe. This will indirectly increase the client base, and ultimately increase the volume of sightings reported.

### Scaffolding
Apart from the generic requirements, we also thought outside the box and saw what Ruby on Rails truly had to offer over the competition. We found a few key points which we find confirmed our decision.

Rails scaffolds the MVC framework and database. 

Gems and Code Re-use
Ruby also has a concept called Gems, which is basically a list of third party plugins written to handle specific tasks. They also provide detailed documentation. The main gem that applies to our system is the ‘MySQL’ database gem. Writing code as modules or Gems allows us to reuse code and create a modular design.

These features allow you to generate a complete back-end system framework in very minimal time. This provides a massive time advantage over PHP, as well as eliminating the chance of human error during initial development. 


The scaffolding capabilities and gems in turn benefits the client as the project would potentially be completed substantially quicker than if a PHP framework was implemented, meaning less man hours; and ultimately being more cost effective.

High-level syntax, Modern language (Future-Proof), Efficient (Time and money)
Ruby also requires less code for the same job, meaning reduced system deployment size. Rails syntax enforces clean and indented code, making it more readable due to being less terse than PHP. 

Being a new language makes Ruby fairly future proof. It uses modern framework for the web implementing a modern, robust system..

For the database, we have implemented the original schema as supplied by the Parks and Wildlife Service and expanded on it. We wanted to ensure that we did not affect the original system, as we cannot guarantee that the tables present in the supplied schema do not possess relations with other out-of-scope system components. The expanded version can be seen on the screen (explain it). The expansion on the provided schema ensures that pre existing systems will not be broken by the implementation of the new Pest Tracking System.

The system will continuously grow with the new information added by each user. We believe the current Parks and Wildlife data center would be suffice for original storage.

In terms of bandwidth, we believe it would be best to cater for a high volume of users, and the processing speeds of the proposed system would make this possible without delays.

As for testing the system, we will be running the system through stress tests to ensure it can reach the required processing speeds. We will also be releasing iterations of the UI and running it through User Acceptance testing, which will be explained in further detail by Hayden.

The proposed system architecture ultimately provides the most time and cost efficient solution, while meeting all functionality requirements of the Parks and Wildlife Service’s proposed system. We believe that this would be the greatest fit.

Finally, we will provide all the required documentation, including the modified database schemas, the installation and operational documentation. This will all be prepared by the release of the product.

