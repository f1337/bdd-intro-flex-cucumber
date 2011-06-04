# A Quick Introduction to Behavior-Driven Development for Adobe Flex: #

## Starring Cucumber, RSpec, Project Sprouts, Melomel and Selenium. ##



### Prerequisites ###

#### Windows ####

1. [Install RubyInstaller >= 1.9.2](http://rubyinstaller.org/downloads/)
2. [Install Git](http://code.google.com/p/msysgit/downloads/list?can=3)
3. [Install Google Chrome](http://google.com/chrome/)

#### Mac OS X ####

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



### Quick Start ###

1. Clone This Github Repository

        git clone git://github.com/fantasticmf/bdd-intro-flex-cucumber.git

2. Install Dependencies: Cucumber, RSpec, Project Sprouts, Melomel and Selenium

        cd bdd-intro-flex-cucumber-melomel
        gem install bundler
        bundle install

3. Compile the Application and Run the Tests

        rake test

    The tests should fail, returning something like:

        Feature: Personalized Greeting
          In order to feel special
          As a site visitor
          I want to be greeted by name

          Scenario: Greet the visitor
            When I type "Michael" in the "Name" text field
              No object found (Melomel::MelomelError)
              features/personalized_greeting.feature:7:in `When I type "Michael" in the "Name" text field'
            And I click the "Enter" button
            Then I should see an alert with the message: "Hello Michael!"

        Failing Scenarios:
        cucumber features/personalized_greeting.feature:6 # Scenario: Greet the visitor

        1 scenario (1 failed)
        3 steps (1 failed, 2 skipped)

4. Manipulate src/Main.mxml until All the Tests Pass

    **Hint: Uncomment some code and change a label attribute.** When the tests are passing, you should see something like this:

        Feature: Personalized Greeting
          In order to feel special
          As a site visitor
          I want to be greeted by name

          Scenario: Greet the visitor
            When I type "Michael" in the "Name" text field
            And I click the "Enter" button
            Then I should see an alert with the message: "Hello Michael!"

        1 scenario (1 passed)
        3 steps (3 passed)

5. Write Additional Scenarios in features/personalized_greeting.feature

    `rake test` and watch them fail, then alter src/Main.mxml until they pass. Rinse, repeat.

6. Add Features by Adding .feature Files in features/

    Use the [Gherkin](https://github.com/cucumber/cucumber/wiki/Gherkin) syntax and [Cucumber Steps for Melomel](http://melomel.info/Cucumber) to write your feature specifications.

7. Pat Yourself on the Back, Sip a Cold Beverage

    You've just learned to write behavior-driven functional tests in a [business-friendly domain-specific language](http://martinfowler.com/bliki/BusinessReadableDSL.html)!