# A Quick Introduction to Behavior-Driven-Development for Adobe Flex, using Cucumber, RSpec, Project Sprouts, Melomel and Selenium. #



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

4. Compile the Application and Run the Tests

        rake test
