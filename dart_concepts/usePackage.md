# How to use packages
## Creating a pubspec
The pubspec is a file named `pubspec.yaml` that's in the top directory of your application. The simplest possible pubspec lists only the package name:
```dart
name: my_app
```
## Importing libraries from packages
To import libraries found in packages, use the `package: `prefix:

```dart
import 'package:js/js.dart' as js;
import 'package:intl/intl.dart';
```
## Upgrading a dependency
The version of your package is store in the `pubspec.lock` file. It's make sure that the version is each package is always use.
```dart
dart pub upgrade
```
### Upgrade specific package
```dart
dart pub upgrade <package name>
```

