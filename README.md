# Price Calculator

Calculate profit margins for products
### Features
Calculate the profit margin with the following rules
* 0 - 15 euros => 51% 
* 15 - 30 euros => 41% 
* 30 - 50 euros => 31% 
* 50 and above => 21%

As a way to make the calculations easier we assume that the last tier has a really high limit that could be configured dynamically. 
As a safe guard an exception is raised if the limit is exceeded

### Installation locally 

* Ensure you have ruby 3.0.0 install locally preferably by using a ruby version manager like rbenv
* Run `bundle install` to install the dependencies
* Run the tests with `bundle exec rspec`. A coverage report will also be generated under `coverage/index.html`.
