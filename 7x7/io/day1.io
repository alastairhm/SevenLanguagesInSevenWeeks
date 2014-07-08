"Io Language Day 1 Self Study from Seven Languages in Seven weeks" println
"===Start===" println

# Io Example Problems
# http://iolanguage.org/scm/io/docs/IoTutorial.html
# http://en.wikibooks.org/wiki/Programming:Io
# http://ozone.wordpress.com/2006/03/15/blame-it-on-io/


# Io Community that will answer questions
# http://stackoverflow.com/questions/tagged/iolanguage
# http://groups.yahoo.com/neo/groups/iolanguage/info

# Io Style Guide with Io idioms
# http://iolanguage.org/scm/io/docs/IoGuide.html

"Evaluate 1+1" println
1 + 1 print
"" println

"Evaluate 1+\"1\"" println
e := try(1+"1")
e println
"Strong type as it generates an exception" println

if (0 and true,"0 is true" println,"0 is false" println)
if ("" and true,"empty string is true" println,"empty string is false" println)
if (nil and true,"nil is true" println,"nil is false" println)

"How can you tell what slots a prototype supports?" println
Object slotNames println
Vehicle := Object clone
Vehicle description := "Takes you far places"
Vehicle slotNames println

# What is the difference between = (equals), := (colon equals), and ::=
# (colon colon equals)? When would you use each one?
#
# ::=       Creates slot, creates setter, assigns value
# :=        Creates slot, assigns value
# =         Assigns value to slot if it exists, otherwise raises exception

"Execute the code in a slot given its name" println

Vehicle startup := method("Turning the key, vroom" println)
Vehicle horn := method("Beep Beep" println)
Vehicle macro := method(name, perform(name))

Vehicle macro("startup")
Vehicle macro("horn")

"===End===" println
