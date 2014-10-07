---
tags: hashes, iteration, object orientation
languages: ruby
resources: 1
---

# Fake Hashes

## Objective

In this lab you will make a class that behaves like a hash.

## Overview

* You should be able to set values in our fake hash.
* You should be able to find all values that have keys beginning with the letter a.
* You should be able to get all the keys in the hash in a descending alphabetized array.

For instance, you should be able to call on the following methods:

```ruby
fall_television = FakeHashWrapper.new

fall_television[:abc] = "How to Get Away with Murder"
fall_television[:nbc] = "Selfie"
fall_television[:amc] = "Walking Dead"
fall_television[:cbs] = "Scorpion"

fall_television[:nbc]
# => "Selfie"

fall_televison.keys
# => [:nbc, :cbs, :amc, :abc]

fall_televison.first_letter("a")
# => ["How to Get Away with Murder", "Walking Dead"]

```

* Finally, you should be able to find keys in the hash regardless of whether they are strings or symbols.
 
For example:

```ruby
fall_televison = FakeHashWrapper.new

fall_televison[:abc] = "black-ish"
fall_televison["cwtv"] = "The Flash"

fall_televison["abc"] 
# => "black-ish"

fall_televison[:cwtv]
# => "The Flash"
```

## Instructions

This is a test-driven lab so run `rspec` to get started.

## Resources
* [Learn Ruby the Hard Way](http://ruby.learncodethehardway.org/) - [Modules, Classes, and Objects](http://ruby.learncodethehardway.org/book/ex40.html)