## Frameworks

While the system employs many libraries and plugins to enhance site functionality and appearance, the two main frameworks are Rails and Bootstrap.

### Rails

A main reason for selecting Rails was scalability. When we talk about a scalable system, we refer to its ability to grow in a capable manner, maintaining its efficiency and effectiveness. Due to the inevitable growth of the Pest Tracking System, it was a definite that the system had to be scalable. The Ruby on Rails framework enforces the use of a Model View Controller architecture, ensuring the system completely separates the information from the user interface; having them communicate through control triggers. MVC architecture ensures design is not tarnished as system size increases. The use of MVC also ties in to system flexibility.

Flexibility of a system relates to the potential to modify interdependent components independently. This basically means that if you change the interface, it should not affect other parts of the system. MVC also caters for this. Having the model, view and controller as independent components allows us to change any given component freely without modifying other components. It also allows for errors to be easily located as you can determine where the error lies depending on what kind of error it is.

The client receives significant benefits from implementing a MVC architecture. Having a scalable system allows the Parks and Wildlife Service to expand their system's server architecture and information without concerns of loss of information. Designing the system in a flexible and modular process allows the Parks and Wildlife Service to have separate teams working on different components of the system freely, with a much lower concern for potential operational conflict within the system.

As well as being scalable and flexible, we need the system to be secure. The system will be storing various forms of sensitive information; including passwords, and other personal information such as names, numbers and addresses. To ensure all the information is secure we need to apply encryption to the database, as well as key attributes. In regards to the encryption of the actual database, it will be handled by the database itself. However, the passwords we have to actually encrypt our data before we store it. In regards to passwords, we can't store them simply as plain text. The encryption of user input is performed by Ruby, and the greatest benefit is we can choose which encryption method we want from the library.

The added levels of security benefits the customer by both having their data safe, as well as giving the users of the system a sense of safety and comfort in using the system, knowing their information is safe. This will indirectly increase the client base, and ultimately increase the volume of sightings reported.

Apart from the generic requirements, we also thought outside the box and saw what Ruby on Rails truly had to offer over the competition. We found a few key points which we find confirmed our decision. These features allow you to generate a complete back-end system framework in very minimal time. This provides a massive time advantage over PHP, as well as eliminating the chance of human error during initial development. 

* Rails scaffolds the MVC framework and database. The scaffolding capabilities and gems in turn benefits the client as the project would potentially be completed substantially quicker than if a PHP framework was implemented, meaning less man hours; and ultimately being more cost effective.

* Gems and Code Re-use: Ruby also has a concept called Gems, which is basically a list of third party plugins written to handle specific tasks. They also provide detailed documentation. The main gem that applies to our system is the 'MySQL' database gem. Writing code as modules or Gems allows us to reuse code and create a modular design.

* High-level syntax, Modern language (Future-Proof), Efficient (Time and money): Ruby also requires less code for the same job, meaning reduced system deployment size. Rails syntax enforces clean and indented code, making it more readable due to being less terse than PHP.

### Bootstrap

As for the front-end, the system is built on the previously mentioned collection of scalable CSS and JS libraries - Twitter Bootstrap - with their associated documentation at http://getbootstrap.com/. Bootstrap was selected as the most useful and best candidate due to it's object-oriented, mobile-first CSS architecture and lightweight flat UI.