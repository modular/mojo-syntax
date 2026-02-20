# SYNTAX TEST "source.mojo" "comptime statement modifier tests"

# comptime as statement modifier for if
comptime if x > 3:
# TODO <- storage.modifier.declaration.python
# TODO    ^^ keyword.control.flow.python

# comptime as statement modifier for for
comptime for x in range(10):
# TODO <- storage.modifier.declaration.python
# TODO    ^^^ keyword.control.flow.python
# TODO          ^^ keyword.control.flow.python

# comptime as statement modifier for assert
comptime assert x > 0
# TODO <- storage.modifier.declaration.python
# TODO    ^^^^^^ keyword.control.flow.python

# comptime tuple destructuring (bare)
comptime a, b = func()
# <- storage.modifier.declaration.python
#        ^ variable.other.python
# TODO       ^ variable.other.python

# comptime tuple destructuring (parenthesized)
comptime (a, b) = func()
# TODO <- storage.modifier.declaration.python
# TODO     ^ variable.other.python
# TODO        ^ variable.other.python
