## Performance

### Description

As the system is web-based, our aim is to create a system that runs smoothly regardless of platform. In order to reach a frame rate, transfer or otherwise speed target, we must rigorously test the system on a range of different devices, browsers, operating systems and firmware. The main concern for this requirement is response time in the fact that many people are using different hardware components or browsers. Slow page rendering may result from bad programming practices or complicated functions, however modern browsers (even on mobile devices) have the ability to route this processing to the GPU.

We have decided the performance of the system as one of main non-functional requirements because we want to build a system that can support all of different users' situation and we want users to feel in our system that can run perfectly and smoothly even users' internet speed in peak time or users have slow speed internet, and we also concerned that even users use old generation of devices, the system must have the ability to handle on it. 

Technical features aside, the system should provide the average response time. For example: 

* Millisecond responses feel instantaneous
* Less than 1 second responses invokes a feeling of quick response
* 1 - 5 second responses may be acceptable for the larger functions
* Over 5 second responses are unacceptable (for most front-end functions)

The system must also address performance requirements over a range of issues such as precision, reliability, availability, robustness and scalability. The last issue would arguably be considered the most important, as the system must be built with enlargement and growth in mind rather than a static concept.

### Scope

The performance relates to the feel and usability of the entire system. Users tend to feel more disconnected and uncomfortable using a system that runs slowly. Since the developments we make here can affect the system as a whole, the performance requirements are an absolutely integral part of designing a modern web system.

### Technical issues

There are a range of issues with performance, but only some we can address. For instance, the system must have the ability to support a significant amount of traffic. It must also have the ability to perform well on older browsers and operating systems in order to provide a well-rounded experience catered to all users.

### Risks

The main risks for this requirement is losing audience and causing crashes on account of a slow-performing system.