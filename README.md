# Vine

This gem let you quickly access and update nested Hash and List structures using a dot notation string. 

### Example

    { a: [ 100, 200 ] }.access("a.0")
    => 100 

    { a: { b: 100 } }.access("a.b") 
    => 100 
    
    {'availableForPickup': false}.access(:availableForPickup)
    => false

### Example 2

    h = { a: { "b"=> 10 } }
    h.set("a.b", 2)
    => { a: { "b"=> 2 } }

    h.set("a.b1.0", 10)
    => { a: { "b"=> 2, b1: [10] } }

    h.set("a.b.c", 100)
    => { a: { "b"=> {c: 100}, b1: [10] } }


### Example 3

    h = { phone_numbers: [ { type: "mobile", num: 123 } ] }
    h.set("phone_numbers.0.type", "fixed")

### Example 4

There is also a method for segmentation.

    [1,2,3,4].segmentation(2)
    => [[[1], [2, 3, 4]], 
        [[1, 2], [3, 4]], 
        [[1, 2, 3], [4]]] 

### Install

    gem install vine

### Setup

    require "vine"





