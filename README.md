# NAME

Perl::Critic::Policy::Subroutines::ProhibitAmbiguousFunctionCalls - Don't call fully qualified function methods without parens

# DESCRIPTION

When writing code like this...

    Some::Class::Name::foo->mymethod

..it is not clear if 'foo' is part of the class, or a function within Some::Class::Name.
The better way to write it is:

    Some::Class::Name::foo()->method

# CONFIGURATION

- `method_always_ok` (string list, default is "new add")

    A list of method names which should always be considered "ok"

- `uppercase_module_always_ok` (boolean, defaults to true)

    Indicates whether module names starting with an uppercase letter are considered "ok".

    For example, Foo::Bar->pop; is considered ok by default, but Foo::bar->pop is not.
