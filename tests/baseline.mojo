# SYNTAX TEST "source.mojo" "Baseline grammar tests"

# existing comptime variable declaration
comptime y = x
# <- storage.modifier.declaration.python
#        ^ variable.other.python

# existing var/alias declarations
var foo = 1
# <- storage.modifier.declaration.python
#   ^^^ variable.other.python
alias Bar = Int
# <- storage.modifier.declaration.python
#     ^^^ variable.other.python

# var tuple destructuring
var c, d = (3, 4)
# <- storage.modifier.declaration.python
#   ^ variable.other.python
#      ^ variable.other.python

# plain assignment without var/let/alias/comptime prefix.
# the grammar can't distinguish declarations from reassignments
# without a keyword, so these get only the base source.mojo scope
# and render as plain unhighlighted text in VS Code.
e, f = (5, 6)
# <- source.mojo
#  ^ source.mojo
(g, h) = (7, 8)
# <- source.mojo
#  ^ source.mojo

# existing control flow keywords
if x > 3:
# <- keyword.control.flow.python
for x in range(10):
# <- keyword.control.flow.python
#     ^^ keyword.control.flow.python
assert x > 0
# <- keyword.control.flow.python
