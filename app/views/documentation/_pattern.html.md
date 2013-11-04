## Pattern

As with any software development undertaking, ensuring that there is a clear architectural vision for the project moving forward is imperative. However, before a vision can be established, the requirements of the system must be considered, and solution options created. With regards to our construction of the NSW Parks and Wildlife Pest Tracking System, there are several key requirements which should drive any recommendation regarding the architecture of the system:

* The system should be accessible via the Internet
* User’s should be gated with regards to access to certain features
* The system must be scalable as future growth is uncertain
* The system must be secure as it handles personal information

As a result of these requirements, it has been determined that there are two possibilities with regards to a solution architecture pattern; either the Model-View-Controller (MVC) design, or a Pipe and Filter design. To make a recommendation, both of these approaches have been compared with regards to the nature of our system and the key requirements listed above.

### Model-View Controller (MVC)

The MVC architecture is based around the concept of separating the User Interface and other user-facing elements with the core functionality and storage of the system. As its name implies, this means the system will be split into three core components; the Model, the View and the Controller. The Model is where all system data resides, and it has sole control over the direct management of this data. The View is essentially the User Interface, and this manages how data is displayed to the user. Finally, the Controller manages all the user’s interaction with the system, and parses these into inputs for the Model to then manipulate the data as required. Likewise, when manipulation occurs, any changes that need to be made to user-facing elements are passed to the Controller, which then modifies the View appropriately. 

There are various benefits when undertaking such a design. For example, MVC allows for infinite scalability. The isolation of the Model, the View and the Controller means that each of these components can be modified individually without effecting the other. For example, a modification of the UI has no effect on the Controller or the Model. Likewise, a change to the Model doesn’t affect the Controller or the View. In this way, new platforms (views) can be added, or the database (model) expanded with little to no impact on the overall system. Furthermore, this isolation means that there is an intrinsic level of security with such a design. Users are unable to interact directly with the Model, and thus there is a higher level of security when compared to other designs. The sole ownership of business logic within the Controller also means that it is simple to moderate or restrict the actions of unprivileged users.

However, with all things, there are some downsides to utilising MVC. Primarily, MVC often requires quite complex code and design at the Model and Controller levels to allow for any View to interact with them. Therefore, when dealing with very simple systems, it can be hard to justify MVC as it may introduce unwarranted complexity.

When assessing the MVC approach, it can be seen that it aligns with the key requirements laid out for our system. The structure does not impede on being able to have a networked solution, and naturally allows for the gating of users, infinite scalability and upholds the security of personal information. For these reasons, it would be appropriate to use MVC as the basis for our system architecture.

### Pipe and Filter

The Pipe and Filter model involves breaking down data processing within the system into individual components, or ‘filters’, that serve a very simple and specific purpose within the overall data flow. The ‘filters’ then pass their output onto the next component, known as piping; thus Pipe and Filter. The data continues to flow through each filter and subsequent pipe until the desired output is achieved. This design means that each step must be carefully planned, and the format of inputs and outputs must be ‘locked-in’ for the life of the system.

The benefit of pursuing the Pipe and Filter scheme is that it closely matches how a manual business process would work. Thus, from a development perspective, it becomes simple to create new systems as the original steps within the established business processes are used as the basis for each ‘filter’ within the system. Furthermore, the system can be expanded upon by simply extending the pipe and filter chain with more data transformation steps. For example, if the receipts being output in a system need to be updated, no change needs to occur to the original components that exist in the system. Instead, a component is simply added, which reduces workload with regards to testing the pre-existing components. Finally, the components used within one system can be easily replicated in another. For example, a component which calculates the tax payable on a transaction can be used in a wide range of financial applications and systems with little to no changes made to the component itself.

On the other hand, there are drawbacks to implementing a Pipe and Filter design. Firstly, the inputs going into any one component and the outputs coming out of it are essentially non-negotiable. This is because the components are designed for very specific purposes, and require a specific input to process and create the correct output. If any change occurs to one component, it often has a domino effect on the whole system, as all the other components within the data processing chain would then be taking in incorrect inputs, and cease to function correctly. Furthermore, this can often mean that changes required for the system down the line are expensive to implement as the entire system may need to be reworked.

With regards to the viability of the Pipe and Filter design with our system, all key requirements are achievable. The system won’t be restricted with regards to Internet use, and security can be implemented by requiring specific input to communicate with the system. However, some issues may arise with regards to scalability because of the specificity required with regards to the inputs of each component. Regardless, Pipe and Filter is a viable architecture option for our implementation of the Pest Tracking system.

### Recommendation

Based on the analysis of the two options at hand, it is recommended that, going forward, the Pest Tracking system utilises the MVC pattern for its overall architectural design, as it offers the most benefits with the only real drawback being a potential increase in code complexity. This is offset by the ability for the system to be infinitely scalable, and the natural security measures which are a part of MVC design. Thus, an MVC architecture clearly aligns with all of the key requirements outlined for the analysis of potential architecture options. Whilst Pipe and Filter may have been viable, the rigidness of the design meant that the key requirement of scalability may have been an issue moving forward.