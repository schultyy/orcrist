orcrist
======

[![Build
Status](https://travis-ci.org/schultyy/orcrist.svg?branch=master)](https://travis-ci.org/schultyy/orcrist)

# Usage

```bash
$ orcrist exec <filename.oc>
```

## Methods

### Definition

```
def foo(a,b):
  a + b
```
A method is defined with the `def` keyword, followed by an identifier and params. The colon indicates, that following lines are indented.


### Method call

`foo(a,b)` with params

`foo` without params. Parentheses are optional here.

Assign a method to a variable and call it:

```
def add(a,b):
  a + b

my_add = add
my_add(1,2) #=> 3
```

### Assign to a variable

```
def foo(a,b):
  a + b

add = foo
add(1,2)
```

# Basic type checking

When you do addition or subtraction, types are checked:

`3 - 4 # => ok`

`3 + 5 # => ok`

`3 + true # => Error`
