# System Documentation

## Solution Architecture

As with any software development undertaking, ensuring that there is a clear architectural vision for the project moving forward is imperative. However, before a vision can be established, the requirements of the system must be considered, and solution options created. With regards to our construction of the NSW Parks and Wildlife Pest Tracking System, there are several key requirements which should drive any recommendation regarding the architecture of the system:

* The system should be accessible via the Internet
* User’s should be gated with regards to access to certain features
* The system must be scalable as future growth is uncertain
* The system must be secure as it handles personal information
* As a result of these requirements, it has been determined that there are two possibilities with regards to a solution architecture; either the Model-View-Controller (MVC) design, or a Pipe and Filter design. To make a recommendation, both of these approaches have been compared with regards to the nature of our system and the key requirements listed above.

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

## System Deployment

Even though an overall architecture has been selected, each of the components must now be identified, and the specific hardware or software required detailed. With regards to our system, there are three main options; to either go with a Microsoft Windows Server setup, a Unix Server (such as Fedora or Solaris) or a custom Rails app deployment service to host the application. Regardless of the selection, there will need to be software installed and configured for database management and rails app deployment.

### Windows Server

Utilising a Windows Server for our system would have various benefits. Firstly, the setup and initial installation of a Windows Server is extremely straight forward. Furthermore, all management and administrative tools are generally available in a GUI, which means that the cost of training a System Administrator to maintain the system will generally be very low. A Windows Server would also come with the added benefit of official support from Microsoft. This means that if bugs or issues were encountered with the system, Microsoft could be directly contacted, and the bug placed on high priority to be repaired.

However, there are some drawbacks to such a system. Firstly, there is a large cost involved with acquiring a licence for not only Windows Server, but for all of the applications that will be required for the system. Furthermore, individual customisations that may be required for our system can’t be implemented under some commercial licenses, and as a result, the risk of breaching license terms becomes very real, and processes around mitigating this must be put into place. The bloat of having a fully-fledged GUI like Windows also adds undue stress to the server.

### UNIX Server

A UNIX server would utilise a common distribution, such as Fedora or Ubuntu, as the basis for all the server side applications that are required in our system. This has various benefits, such as the fact that all the software that is required can be acquired for free. Furthermore, the licenses for such software don’t dictate restrictive terms with regards to modification, and as such, allows for virtually infinite flexibility. Finally, UNIX Servers are currently being used throughout UTS, so from an IT Support standpoint, it is extremely simple to integrate another UNIX Server under current SLAs as opposed to incorporating a competing platform.

The major drawback of a UNIX System is the lack of official support for the server. This means that it can be often difficult to trace and follow up any bugs or errors that may occur in the operating system itself.

### Heroku

Heroku is a cloud platform as a service (PaaS) that supports multiple programming languages, including Ruby and it’s popular framework - Rails. Applications are deployed through Git and the Heroku server in the cloud for free. It rarely has stability problems, and it’s extensibility and flexibility make it an incredibly powerful and cost-efficient solution. Application deployment and maintenance tasks are all very quick to perform, taking 5 minutes or less.

On the downside, Heroku can become expensive when adding high-end features. Deploying to the server forces the server to restart, along with all the dynos, and it must re-compile the entire application.

### Recommendation

Based on the above analysis, it is recommended that our system be implemented using Heroku. It’s simplicity, efficiency and scalability make it a perfect platform for deploying our Rails application.

## Sprint Management and Planning

### Backlog

This project’s sprint backlog was managed by the Project Manager. Each week has 4 columns, the first being the sprint backlog. Tasks in the sprint backlog were taken from the master project backlog - grouped with similar tasks and assigned to a sprint. Any task in the backlog from a previous week were marked as outstanding using Trello labels. All backlog tasks were realistically defined by a short title, a description and a use case.

### Release plan

Release plans were created for each sprint and reflected in the sprint plan / description. Each release plan described the outcome derived from the completion of all tasks in the respective sprint. In earlier weeks, these were simply the production of documentation or diagrams. However, in later weeks, release plans related more closely to the production of the system and it’s release candidates.

### Task list

Our sprint backlog, or task list, consisted of all related tasks from the master backlog. These issues were marked with different categories, such as development, design, documentation, integration, testing and more. The segregation of tasks into categories helped each sprint focus on a specific system issue.

### Task allocation

During the first few weeks, each individual was allowed to allocate themselves tasks on Trello. This helped determine their pro-activeness and skills. After these were clearly defined, the Project Manager took to allocating tasks to each individual based on their input level and skills. Task allocation was very flexible to account for any unforeseen circumstances, where other members of the group could join the task when they had completed their own. Each member was responsible for their tasks and were liable if their tasks weren’t completed.

### Sprint management

The Project Manager became responsible for managing the entire project and sprints. Evidence of activity including task progression, task management and allocation are all available in the Trello activity log. Completed tasks are left in the “completed” list for the sprint and the board is closed, preventing any further edits. Any unfinished tasks are moved to the next sprint and marked as important.

### Feature updates

During the production of initial documentation and diagrams, the list of the system’s functional and non-functional requirements and features were updated to reflect new ideas and changed knowledge. This is evident in Trello’s card activity panel.

### Practices review

During the weekly sprint meetings, methods of working were updated to reflect lessons learnt in the previous sprint. Such lessons included the importance of strictly allocating members to tasks, setting due dates for multiple overlapping cards and finishing overdue tasks first.

### Group work review

During the course of the project, people, processes and tools were re-evaluated and discovered to automate and enhance our workflow. Trello was added for sprint management and task allocation, Facebook was added for general discussion, Google Drive was added for collaborative documentation and Git was added for version control and collaborative project construction. People were re-allocated to different cards depending on their preference, skill levels and other factors.

### Project management tools

The two project management tools chosen - Trello and GitHub - were well thought out and justifiable. Git was chosen as a version control system above Mercurial or Subversion due to it’s ease of use, scalability, flexibility. The choice between issue tracking / version control system was more difficult, with options like Trak, Bitbucket and Gyro offering useful tools. GitHub was chosen due to it’s complete and simple integration with Git (specifically when using the GitHub software for Windows / Mac). This also flattened the learning curve for the less experience members of the group.

Trello was chosen as our task management tool above something like JIRA due to it’s stark simplicity. Due to the relatively short length of the project, we needed a system that would let us easily manage tasks without getting in the way. While lacking a few trivial features, Trello provided a great way to manage tasks.

## Front-end Documentation

### HAML

Rather than writing HTML, the system is built on a precompiled HTML substitute called HAML (HTML Abstraction Markup Language). Deprecating closing elements and tag syntax, HAML provided a simpler way of producing markup via. indentation and CSS-style syntax. Since the system is built on Ruby, HAML is compiled to HTML using Ruby.

### SASS

Similar to the HTML substitute, the system’s CSS is also precompiled using a language called SASS. This allows for nested CSS rules and other helpful improvements that are compiled through Ruby to CSS.

### CoffeeScript

Similar again to the first two examples, JavaScript is precompiled using Ruby and CoffeeScript. It provides a lightweight alternative to producing lengthy JavaScript and helps endorse well structured code like HAML.

Just like the back-end, the front-end has been built to endorse clean code and scalability. The system is built on a collection of scalable CSS and JS libraries - Twitter Bootstrap - with their associated documentation at http://getbootstrap.com/.

## Back-end Documentation

## Installation Guide

## Help and Support

## System Manual