# Prime Numbers

## Information

I've written this in Groovy. You can find more about groovy [here](www.groovy-lang.org) and [here](https://en.wikipedia.org/wiki/Groovy_(programming_language)).
A popular web framework is available for groovy by the name of [Grails](https://grails.org/). As the name suggests, its the sister framework to Rails. Based on
the idea of convention over configuration, Grails provides an easy to use web framework while still providing very high performance (groovy compiles to JVM byte
code).  

You'll notice that most groovy projects use a build tool called [gradle](https://gradle.org/). Gradle is a popular build tool used by most JVM languages.
You can also use it to build C/C++ projects.  

## Installation

To run this project you'll need to install a number of dependencies. Luckily this is very simple due to a fantastic JVM version manager.
Please open a terminal and follow the below:

1. Install [sdkman](http://sdkman.io/). Sdkman provides version management to most popular JVM languages/tooling. Its very similar to RVM for Ruby and kiex for Elixir.
You can find the installation instructions [here](http://sdkman.io/install.html). Or simply run the below commands:
`curl -s "https://get.sdkman.io" | bash`
`source "$HOME/.sdkman/bin/sdkman-init.sh"`
And then run the following to check everything is working right:
`sdk version`
2. If you don't have the JDK installed, you can now install it via sdkman. Run the below command to install:
`sdk install java`
Optional: You're able to find what versions are available to download by running:
`sdk list java`
And then install a specific version by running:
`sdk install java <insert version number here>`
3. You'll also want to install the latest version of groovy using a similar command:
`sdk install groovy`
4. Finally we want to install gradle, this can be done by running:
`sdk install gradle`

## How to run

Great, now everything should be installed correctly. When you're ready, navigate in your terminal to:
 `Code-Gold/Week-3/Michael/prime_numbers/`

1. First we want gradle to build the project. Using the below command it will download the packages it requires. There should be no errors, but if there
are please let me know... it runs fine on my machine ;).
`gradle build`

2. If everything builds correctly we want to run the tests. This can be done by using the below command. There should be no output in the terminal if
everything runs correctly.
`gradle clean test`

3. Once the tests are run, the spock framework should output the results to a page, this can be found at the below directory.
`Code-Golf/Week-3/Michael/prime_numbers/build/reports/tests/test/index.html`

## Performance

In my tests the basic samples run in 285 miliseconds, however when I run the test via gradle the test runs in 101 miliseconds.
This is on a 2012 mbp, running 10.2 macOS with a 2.2 GHz Intel Core i7.
