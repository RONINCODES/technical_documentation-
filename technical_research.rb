# Technical research project using google docs and IRB

#Section 1, Strings enumorators:looking at .length   .strip  .split  .start_with?
#Instructions
#1) Read the docs
#2) Try out the method in irb using a few different values
#3) Once you feel like you understand how it works, write down
 # its arguments (name, data type, optional/required, default value if any)
#   its return type
#5) a line of code showing how to call the method and what will be returned

#**********************************************************#

# 1) .length returns the length of characters within a string as am integer
# 2) example in irb :
     #   string = "Ronen"   (create a variable called x = "string")
     #   string.length      (call the funtction, .length on the variable string)
     #   => 5               (.length functions counts 5 character in the value of the variable string
                            # in this case "Ronen" and outputs => 5 (an integer)
    # arguments: string


# 1) .strip returns a string with the leading and trailing whitespaces removed
# 2) example in irb:
    #  "   Ronen     ". strip    .strip is called on a string that has white space on either both or once side.
    #  => "Ronen"                 this returns the string without the white spaces.

    # arguments : string with white spaces.


# 1) .split divides a string into substrings based on a delimiter, returning an array of these substrings
      # the delimiter may be a comma, or a set of quotes or white spce etc, depending on the nature of the string.

# 2) example in irb
    # if pattern is a string:
    # "Hello Ronen how are you?".split
    #  => ["Hello", "Ronen", "how", "are", "you?"]

    # example 2 in irb
    #"mellow yellow".split("ello")
    # => ['m', 'wy', 'w']  # with .split function you can feed it a paprameter - it will use it to determine
                             # where to split.  There are other ways to use the split function,
                            # based both on the objects being split and the parameters passed to the function.

    #argument: is not necessary however, if passed it will be used to determine hwo to split the string.

# 1) .start_with? function method returns true if string starts with one of the passed prefixes.
# 2) example in irb:
    #"hello".start_with?("heaven", "hell")  # call .start_with method on the string "hello", and pass the arguements
                                               #("heaven", "hell")
    # =>true                                   This returns true because one of the arguments passed the criteria
                                                # note the questionmark at the end of the methdd name - returns true or false

  #example2
  # "hello".start_with?("bob", "rob")
   # => false                                  output is false because the string does not match any of the prefixes passed as arguments into the function.

#***********************************************************************************************************************#
# Section 2: array
# 1) .first   2) .delete_at   3) .delete   4) .pop

# 1) .first method returns the first element, or the first n elements, of the array. If the array is emepty
     # the first form returns nil, and the second form returns an empty array.

# 2) examples in irb
  # a = ["a", "b", "c", "d"]  set a variable with the value of an array (may contain strings or integers...etc)
  # a.first          call the .first function on the variable 'a'
  # => "a"         #  returns the the first element within the array

# example 2 in irb
# a.first(2)         # calling .first with parameter of 2 on variable 'a'.
# => ["a", "b"]   # this returns the first 2 elements within the array.
                  # if calling .first on an empty array it will retun => nil


#1) .delete_at(index) function, deletes the elements at the specified index, returning that element,
                      # or nil if the index is out of range.

# 2) example in irb
# name = ["bob", "jim", "kim", "fred"]  set the variable and give it a value of an array
 #  name.delete_at(2)                   call .delete_at(2) function on variable 'name'.
# => "kim"                              the output is the element in the passed index number in this case 2
# name                                     if you call the array,
# => ["bob", "jim", "fred"]                you see that 'kim' is gone

# arguments: (index number)  - if the argument passed is out of range - ie (in this case) delete_at(99) - this will return => nil.


# 1) .delete(object) and or .delete(object){block} function deletes all items from self that are equal to object parameter.
                                                     # returns the deleted item, and or nil if item was not found.  If the optional code ({block}) is given
                                                     # the result of the block is returned if the ite, is not found.

# 2) Example in irb
# a = ["a", "b", "b", "c", ]    # create variable and assign value of an array to it
  #   a.delete("b")            #call .delete("b") function with ("b") parameter on array.
  #  => "b"                   #returns the deleted string, element

  # Example 2 in irb
  #  a.delete("z")
  # => nil                     #returns nil if parameter is not found

  # Example 3 in irb
  # a.delete("z"){"not found"}
  # => "not found"           # returns value in block {}, if value in parameter not found/doesnt exist


# 1) .pop(n) function removes the last element from self and returns it, or nil if the array is empty.
             # If a number n is given, returns an array of the last n elements (or less) -

# 2) example in irb
# a = ["a", "b", "c", "d"]  # create variable and assign value of an array
#  a.pop                     #calling .pop with no parameter deleted the last elment within an array
#  => "d"                    #the return value is the deleted element.
# a
# ["a", "b", "c"]            now the array has no "d".

# eample 2 in irb
#  a.pop(2)                 # *remember we already removed the "d" and so the new array is on line 115
#  => ["b", "c"]            # the function returns the deleted elements
# a
# => ["a"]                   #the only element left within the array.

#*************************************************************************#
# Section 3 : Hash
# 1) .to_a       2) .has_key?      3) has_value?

# 1) .to_a function converts hash to a nested array of [key, value] arrays.

# 2) example in irb:
# h = {"c" => 300, "a" => 100, "d" => 400, "c", => 300 }     #set variable with a hash value
# h.to_a                                                     # called .to_a on a variable with a hash value
# => [["c". 300], ["a" , 100], ["d", 400]]                   # function returns converted hash as an array.


# 1) .has_key?(key) function returns true if the given is present in hash.

#2) example in irb
# h = {"c" => 300, "a" => 100, "d" => 400, "c", => 300 }  #set an variable with a hash value
# h.has_key?("a")                                           # called methodd with parmeter on hash
# => true                                                  # output is true because the key ("a") was found in the hash.

# example 2 in irb
# h = {"c" => 300, "a" => 100, "d" => 400, "c", => 300 }
# h.has_key?("z")
# => false                                                  # method returns false if parameter key not found in hash.


# 1) .has_value?(value) function returns true if the given value is present for some key in hash.

# h = {"c" => 300, "a" => 100, "d" => 400, "c", => 300 }  #set an variable with a hash value
# h.has_value?(100)                                         # called method with parmeter on hash
# => true                                                  # output is true because the value(100) was found in the hash.

# example 2 in irb
# h = {"c" => 300, "a" => 100, "d" => 400, "c", => 300 }
# h.has_key?("800")
# => false                                                  # method returns false if parameter value not found in hash.



#****************************************************************************************************#
# Section: 4 Time

#1) .now function creates a new Time object for the current time.

#2) example in irb
# Time.now
#=> 2017-05-18 18:20:23  -0400   # output is year/month/day/time (24hour clock) and time zone


#******************************************************************************************************#
# Section 5: File
# 1) .exist?      2) .extname

# 1) .exist?(file_name)  # returns true if the named file exists and false if it does not


# 2) .extname(path) returns the extension (the portion of file name in path starting from the last period)
# File.extname("test.rb")
# => ".rb"
