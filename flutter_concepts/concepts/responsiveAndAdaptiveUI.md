
# MediaQuery – Getting Screen Dimensions
MediaQuery provides information about the size, orientation, pixel density, padding, and other properties of the current device.
```dart
final size = MediaQuery.of(context).size;
final width = size.width;
final height = size.height;
```
### Use cases:
- Calculating UI sizes as a percentage of screen dimensions.
- Creating adaptive layouts depending on screen size.

# ViewInsets and ViewPadding – Keyboard Awareness
MediaQuery.of(context).viewInsets gives the parts of the display that are covered by system UI (like the keyboard).

viewPadding gives the padding caused by system UI that's always visible (like status bar or notch).

``` dart
final bottomInset = MediaQuery.of(context).viewInsets.bottom;

if (bottomInset > 0) {
  // Keyboard is visible
}
```
### Use case: 
- Automatically adjust widgets when the keyboard appears.

# SafeArea – Avoiding System UI
SafeArea helps ensure your UI does not get hidden behind system UI elements such as:

- Notches
- Status bar
- Navigation bar

```dart
SafeArea(
  child: YourWidget(),
)
```
### Use case:

- Makes sure content is fully visible on all devices, even those with special screen cutouts.

# Adaptive Layouts – Adapting to Form Factors
Use LayoutBuilder or screen width to provide different UI layouts for different screen sizes:

```dart
LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth < 600) {
      return MobileLayout();
    } else {
      return TabletLayout();
    }
  },
);
```
### Use case:
- Build UIs that work on phones, tablets, and even desktops.

# Responsive Design – Flutter Best Practices
Responsive design aims to make UI adjust smoothly across different screen sizes and orientations.

### Principles:

- Avoid hard-coded sizes.
- Use MediaQuery, Flexible, or layout widgets like:
``` dart
Container(
  width: MediaQuery.of(context).size.width * 0.8,
  child: Text('Responsive text'),
)
```
# Widgets for responsive UI:

- Expanded, Flexible
- FittedBox, Wrap
- LayoutBuilder, FractionallySizedBox