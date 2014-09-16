---
  tags: hashes, iteration, object orientation
  languages: ruby
---

# Fake Hashes

## Instructions
In a previous lab you created an object that behaves like a array.  In this lab we're going to make a fake hash!

I'd like to be able to find keys in the hash regardless of whether they are strings or symbols.
 
For example
 
obj = {:blake => "the best"}
obj["blake"] #=> "the best"
 
I'd like to be able to set values in our fake hash.
I'd like to be able to find all values that have keys beginning with the letter a.
I'd like to be able to get all the keys in the hash in a descending alphabetized array.