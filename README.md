# takeaway

[![Test Coverage](https://codeclimate.com/github/chandley/takeaway/badges/coverage.svg)](https://codeclimate.com/github/chandley/takeaway)
[![Code Climate](https://codeclimate.com/github/chandley/takeaway/badges/gpa.svg)](https://codeclimate.com/github/chandley/takeaway)

## Summary

Restaurant menu with Twilio API call

### Problem

* Implement the following functionality:
* list of dishes with prices
* placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
* The text sending functionality should be implemented using Twilio API
* 
* Make sure that your Takeaway class is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
* However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent
### Languages/Platforms/Tools

| Languages | Technologies  | Testing Frameworks| Misc
| :-------------------------------------------- |:--------------|:-----------|:----|
| Ruby      |               | Rspec             |Twilio             |
|           |               |                   |               |
|           |               |                   |  
|           |               |

### Solution
* Classes include dish, menu and order, customer and twilio 
### Setup
* You'll need to register with Twilio and save the API keys as environment variables
TWILIO_SID
TWILIO_AUTH_TOKEN
TWILIO_PHONE_NUMBER
RECEIVING_PHONE_NUMBER
* The classes are then accessed in IRB
````
`2.0.0-p594 :003 > %w(dish customer menu order).each {|file| require_relative file+'.rb'}
 => ["dish", "customer", "menu", "order"]
2.0.0-p594 :005 > egg = Dish.new('egg',1)
 => #<Dish:0x007fb97223add8 @name="egg", @price=1>
2.0.0-p594 :006 > bacon = Dish.new('bacon',2)
 => #<Dish:0x007fb9721ccdd8 @name="bacon", @price=2>
2.0.0-p594 :007 > menu = Menu.new([egg,bacon])
 => #<Menu:0x007fb97215ab98 @dishes=[#<Dish:0x007fb97223add8 @name="egg", @price=1>, #<Dish:0x007fb9721ccdd8 @name="bacon", @price=2>]>
2.0.0-p594 :008 > customer = Customer.new('Chris')
 => #<Customer:0x007fb97210fc10 @order="Chris">
2.0.0-p594 :009 > order = Order.new
 => #<Order:0x007fb9720f6580 @dishes={}>
2.0.0-p594 :011 > order.choose(egg)
 => 1
2.0.0-p594 :012 > order.choose(bacon)
 => 1
2.0.0-p594 :014 > order.total_price
 => 3
```
### Tests

### Images

### To do

* Get code coverage to work
* Some class functionality is not complete

### Learning points
* API call
* Environment variables
* Stubbing external calls
