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

# existing control flow keywords
if x > 3:
# <- keyword.control.flow.python
for x in range(10):
# <- keyword.control.flow.python
#     ^^ keyword.control.flow.python
assert x > 0
# <- keyword.control.flow.python
