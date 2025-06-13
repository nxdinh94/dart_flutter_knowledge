SOLID
## S in SOLID
The single responsibility principle states that one class should have one reason to change, that means, one class should do one thing(one method).
## O in SOLID
The open-closed principle states that classes, modules, and functions should be open for extension but closed for modification.

This principle might seem to contradict itself, but you can still make sense of it in code. It means you should be able to extend the functionality of a class, module, or function by adding more code without modifying the existing code.
## L in SOLID
The principle states that child classes or subclasses must be substitutable for their parent classes or super classes. In other words, the child class must be able to replace the parent class. This has the advantage of letting you know what to expect from your code.
## I in SOLID
The interface segregation principle states that clients should not be forced to implement interfaces or methods they do not use.
## D in SOLID
The dependency inversion principle is about decoupling software modules. That is, making them as separate from one another as possible.

The principle states that high-level modules should not depend on low-level modules. Instead, they should both depend on abstractions. Additionally, abstractions should not depend on details, but details should depend on abstractions.

In simpler terms, this means instead of writing code that relies on specific details of how lower-level code works, you should write code that depends on more general abstractions that can be implemented in different ways.

This makes it easier to change the lower-level code without having to change the higher-level code.