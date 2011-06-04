# A Quick Introduction to Behavior-Driven-Development for Adobe Flex, Using Cucumber, RSpec, Project Sprouts, Melomel and Selenium. #



## Prerequisites ##

### Windows ###

1. [Install RubyInstaller >= 1.9.2](http://rubyinstaller.org/downloads/)
2. [Install Git](http://code.google.com/p/msysgit/downloads/list?can=3)
3. [Install Google Chrome](http://google.com/chrome/)

### Mac OS X ###

1. [Install XCode](http://developer.apple.com/xcode/)
2. [Install Git](http://code.google.com/p/git-osx-installer/downloads/list?can=3)
3. [Install Google Chrome](http://google.com/chrome/)
4. Install [RVM (Ruby Version Manager)](https://rvm.beginrescueend.com/):

        bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)
        echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile
        source ~/.bash_profile
        type rvm | head -1

    If RVM installed correctly, the last command should return "rvm is a function". If it returns "rvm: not found", remove RVM (`rm -rf ~/.rvm`) and reinstall.

5. Install Ruby 1.9.2:

        rvm install 1.9.2
        rvm use 1.9.2
        ruby -v

    If Ruby 1.9.2 installed correctly, the last command should return "ruby 1.9.2...".

6. (Optional) Set the Default Ruby Version

    If you don't require other versions of Ruby for existing projects, this will save you from having to `rvm use 1.9.2` before you `rake` this project in a new shell:

        rvm --default use 1.9.2



## Quick Start ##

1. Clone This Github Repository

        git clone git://github.com/fantasticmf/bdd-intro-flex-cucumber.git

2. Install Dependencies

        cd bdd-intro-flex-cucumber-melomel
        gem install bundler
        bundle install

3. Compile the Application and Run the Tests

        rake test

4. Manipulate src/Main.Mxml until All the Tests Pass

    Hint: Uncomment some code and change a label attribute.

5. Write Additional Scenarios in features/personalized_greeting.feature

    `rake test` and watch them fail, then alter src/Main.xml until they pass. Rinse, repeat.

6. Add Features by Adding .feature Files in features/

    Use the [Gherkin](https://github.com/cucumber/cucumber/wiki/Gherkin) syntax and [Cucumber Steps for Melomel](http://melomel.info/Cucumber) to write your feature specifications.

7. Pat Yourself on the Back, Sip a Cold Beverage

    You've just learned to write behavior-driven functional tests in a [business-friendly domain-specific language](http://martinfowler.com/bliki/BusinessReadableDSL.html)!