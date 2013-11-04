## Deployment

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