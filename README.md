# Roblox-Quicksort-Module

A module for quicksorting arrays in Roblox.


# Functions - 
  * module.sortArray - Quick sorts the array from greatest to least. EX -
  ```
    local module = require(game:GetService("ReplicatedStorage"):WaitForChild("quicksortModule"))
    
    local exampleArray = {4, 8, 2, 7, 5, 8, 0, 5, 4}
    
    array = module.sortArray(exampleArray)
  ```
  
  Expected output -
  
  ```
  exampleArray == {0, 2, 4, 4, 5, 5, 7, 8, 8)
  ```
  --------
  
  * module.printTable - Prints the values from a table. EX - 
  ```
    local module = require(game:GetService("ReplicatedStorage"):WaitForChild("quicksortModule"))
    
    local exampleArray = {4, 8, 2, 7, 5, 8, 0, 5, 4}
    
    module.printTable(exampleArray)
  ```
  
  Expected output - 
  
  ```
  1 = 4,
  2 = 8,
  3 = 2,
  4 = 7,
  ...
  ```
