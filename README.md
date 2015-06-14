# Vine

This gem let you access nested Hash and List structures straightforwardly. 

### Example

    { a: [ 100, 200 ] }.fetch("a.0")
    => 100 

    { a: { b: 100 } }.fetch("a.b") 
    => 100 
    
    {'availableForPickup': false}.fetch(:availableForPickup)
    => false
    
### Example

I also added this method for segmentation.

    [1,2,3,4].segmentation(2)
    => [[[1], [2, 3, 4]], 
        [[1, 2], [3, 4]], 
        [[1, 2, 3], [4]]] 

### Install

    gem install vine

### Setup

    require "vine"





