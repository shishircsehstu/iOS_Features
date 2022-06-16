### Closure

- Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures can capture and store references to any constants and variables from the context in which they’re defined.


## Why they made @nonescaping by default?

There are many different benefits of making non-escaping as by default. The most important benefits are performance and code optimisation by the compiler, because if the compiler knows that the closure is non-escaping, will take care about the memory allocation for the closure.
