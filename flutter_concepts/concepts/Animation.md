# Types of Animations
## Implicit Animations (Easy, Less Control)

- Animate when a property changes.
- No need for controllers.
- Examples:
    - AnimatedContainer
    - AnimatedOpacity
    - AnimatedPositioned

## Explicit Animations (More Control)
- Manual control over timing, curve, and trigger.
- Use AnimationController, Tween, and AnimatedBuilder.
- Useful for complex, multi-step animations.

## Example: Explicit Animation with Controller
```dart
AnimationController _controller = AnimationController(
  vsync: this,
  duration: Duration(seconds: 2),
);
Animation<double> _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

``
