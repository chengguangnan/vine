# Vine

This gem let you access nested Hash and List structures straightforwardly. 

### Example

    { a: [ 100, 200 ] }.access("a.0")
    => 100 

    { a: { b: 100 } }.access("a.b") 
    => 100 
    
    {'availableForPickup': false}.access(:availableForPickup)
    => false
    
### Example 2

There is also a method for segmentation.

    [1,2,3,4].segmentation(2)
    => [[[1], [2, 3, 4]], 
        [[1, 2], [3, 4]], 
        [[1, 2, 3], [4]]] 

### Install

    gem install vine

### Setup

    require "vine"





