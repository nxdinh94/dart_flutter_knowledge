## List 
1. Dart infers that `list` has **type**.
2. You can get a list's length using the `.length` property and access a list's elements using the subscript operator ([]):
3. To create a list that's a compile-time constant, add const before the list literal:
```dart
    var constantList = const [1, 2, 3];
    // constantList[1] = 1; // This line will cause an error.
```
4. Use indexOf() to find the index of an object in a list:

```dart
    var fruits = ['apples', 'oranges'];
    // Find an item in a list.
    assert(fruits.indexOf('apples') == 0);
```
5. Sort a list using the sort() method.
6. Lists are parameterized types (generics), so you can specify the type that a list should contain:
```dart
    // This list should contain only strings.
    var fruits = <String>[];

    fruits.add('apples');
    var fruit = fruits[0];
    assert(fruit is String);
```

## Sets
- A set in Dart is an unordered collection of unique items. Because a set is unordered, you can't get a set's items by index (position).
```dart
    // Create an empty set of strings.
    var ingredients = <String>{};

    // Add new items to it.
    ingredients.addAll(['gold', 'titanium', 'xenon']);
    assert(ingredients.length == 3);

    // Adding a duplicate item has no effect.
    ingredients.add('gold');
    assert(ingredients.length == 3);

    // Remove an item from a set.
    ingredients.remove('gold');
    assert(ingredients.length == 2);

    // You can also create sets using
    // one of the constructors.
    var atomicNumbers = Set.from([79, 22, 54]);
```

- Use `contains()` and `containsAll()` to check whether one or more objects are in a set:

```dart
    var ingredients = Set<String>();
    ingredients.addAll(['gold', 'titanium', 'xenon']);

    // Check whether an item is in the set.
    assert(ingredients.contains('titanium'));

    // Check whether all the items are in the set.
    assert(ingredients.containsAll(['titanium', 'xenon']));
```
- An intersection is a set whose items are in two other sets.

```dart
    var ingredients = Set<String>();
    ingredients.addAll(['gold', 'titanium', 'xenon']);

    // Create the intersection of two sets.
    var nobleGases = Set.from(['xenon', 'argon']);
    var intersection = ingredients.intersection(nobleGases);
    assert(intersection.length == 1);
    assert(intersection.contains('xenon'));
```

## Maps
1. Use remove() to remove a key and its value from a map.
```dart
    var nobleGases = {54: 'xenon'};

    // Retrieve a value with a key.
    assert(nobleGases[54] == 'xenon');

    // Check whether a map contains a key.
    assert(nobleGases.containsKey(54));

    // Remove a key and its value.
    nobleGases.remove(54);
    assert(!nobleGases.containsKey(54));
```
2. You can retrieve all the values or all the keys from a map:
```dart
    var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu'],
    };
    var keys = hawaiianBeaches.keys;
    var keys = hawaiianBeaches.values;

```
3. Map values can be null
4. To check whether a map contains a key, use `containsKey()`
```dart
    var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu'],
    };

    assert(hawaiianBeaches.containsKey('Oahu'));
    assert(!hawaiianBeaches.containsKey('Florida'));
```
5. Use the `putIfAbsent()` method when you want to assign a value to a key **if and only if** the key does not already exist in a map.
```dart
    var teamAssignments = <String, String>{};
    teamAssignments.putIfAbsent('Catcher', () => pickToughestKid());
    assert(teamAssignments['Catcher'] != null);
```
6. Use Iterable's `where()` method to get all the items that match a condition. Use Iterable's `any()` and `every()` methods to check whether some or all items match a condition.
```dart
    var teas = ['green', 'black', 'chamomile', 'earl grey'];

    // Chamomile is not caffeinated.
    bool isDecaffeinated(String teaName) => teaName == 'chamomile';

    // Use where() to find only the items that return true
    // from the provided function.
    var decaffeinatedTeas = teas.where((tea) => isDecaffeinated(tea));
    // or teas.where(isDecaffeinated)

    // Use any() to check whether at least one item in the
    // collection satisfies a condition.
    assert(teas.any(isDecaffeinated));

    // Use every() to check whether all the items in a
    // collection satisfy a condition.
    assert(!teas.every(isDecaffeinated));
```


## Parsing URIs
- If you have a *Uri* object or a *URI string*, you can get its parts using Uri fields such as path. To create a Uri from a string, use the parse() static method:
```dart

    var uri = Uri.parse('https://example.org:8080/foo/bar#frag');

    assert(uri.scheme == 'https');
    assert(uri.host == 'example.org');
    assert(uri.path == '/foo/bar');
    assert(uri.fragment == 'frag');
    assert(uri.origin == 'https://example.org:8080');

```

## Build URIs

```dart
    var uri = Uri(
    scheme: 'https',
    host: 'example.org',
    path: '/foo/bar',
    fragment: 'frag',
    queryParameters: {'lang': 'dart'},
    );
    assert(uri.toString() == 'https://example.org/foo/bar?lang=dart#frag');

```

## Datetime
## Utility classes
## Exceptions
