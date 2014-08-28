Takeaway
===
Create a Takeaway program that can create dishes, menus and orders. When the order is placed in irb, an SMS confirmation is sent to your phone.

Objectives of exercise
----
Learning Object-Oriented-Programming, using Rubygems and Test-Driven-Development.

Technologies used
----
- Ruby
- Rspec
- Twilio

How to run it
----
```sh
git clone git@github.com:odelevingne/takeaway.git
cd takeaway
irb
require './lib/customer.rb'
require './lib/dish.rb'
require './lib/takeaway.rb'
require './lib/menu.rb'
require './lib/order.rb'
require './lib/text_message_confirmation.rb'

``` 

How to run tests
----
```sh
cd Takeaway
rspec
```
