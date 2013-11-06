## Languages (also justify)

### HAML

Rather than writing HTML, the system is built on a precompiled HTML substitute called HAML (HTML Abstraction Markup Language). Deprecating closing elements and tag syntax, HAML provided a simpler way of producing markup via. indentation and CSS-style syntax. Since the system is built on Ruby, HAML is compiled to HTML using Ruby.

### SASS

Similar to the HTML substitute, the system's CSS is also precompiled using a language called SASS. This allows for nested CSS rules and other helpful improvements that are compiled through Ruby to CSS.

### CoffeeScript

Similar again to the first two examples, JavaScript is precompiled using Ruby and CoffeeScript. It provides a lightweight alternative to producing lengthy JavaScript and helps endorse well structured code like HAML.

### Ruby

In deciding the languages and framework to implement through the system, we had to consider the requirements we had in place. We had to consider scalability, flexibility, security and functionality.

After assessing these requirements, we had decided to adopt the Ruby coding language with the Rails framework; also known as Ruby on Rails, as it offers a great deal of benefits over other server side languages that we believe suits the project, such as CakePHP and Symfony, discussed in further detail in the Frameworks section.