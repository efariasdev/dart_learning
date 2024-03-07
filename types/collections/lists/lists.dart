void main() {
  /// Constructors
  print('--Constructors--');

  /// List.empty({bool growable = false})
  /// Creates a new empty list.
  var emptyList = List.empty();
  print('List.empty: $emptyList');

  /// List.filled(int length, E fill, {bool growable = false})
  /// Creates a list of the given length with fill at each position.
  /// In this case you can't change the length because 'growable' is set to false by default.
  var filledList = List.filled(5, 'a');
  print('List.filled: $filledList');

  /// List.from(Iterable elements, {bool growable = true})
  /// Creates a list containing all elements.
  /// If you set 'growable' as false and try to add or remove an element it throws an error.
  Iterable<int> iterable = [1, 2, 3, 4, 5];
  var fromList = List.from(iterable, growable: false);
  // fromList.add(6); // This line would throw an error because the list is not growable
  print('List.from: $fromList');

  /// List.generate(int length, E generator(int index), {bool growable = true})
  /// Generates a list of values.
  var generatedList = List.generate(5, ((index) => index += 1));
  print('List.generate: $generatedList');

  /// List.of(Iterable<E> elements, {bool growable = true})
  /// Creates a list from elements.
  var ofList = List.of([1, 2, 3, 4, 5]);
  print('List.of: $ofList');

  /// List.unmodifiable(Iterable elements)
  /// Creates an unmodifiable list containing all elements.
  var unmodifiableList = List.unmodifiable([1, 2, 3, 4, 5]);
  // unmodifiableList.add(6); // This line would throw an error because the list is unmodifiable
  // unmodifiableList.remove(2); // This line would throw an error because the list is unmodifiable
  print('List.unmodifiable: $unmodifiableList');

  /// Properties
  print('\n--Properties--');

  final exampleList = <String>['a', 'b', 'c'];

  /// first ↔ E
  /// The first element.
  print('first: ${exampleList.first}');

  /// hashCode → int
  /// The hash code for this object.
  print('hashCode: ${exampleList.hashCode}');

  /// isEmpty → bool
  /// Whether this collection has no elements.
  print('isEmpty: ${exampleList.isEmpty}');

  /// isNotEmpty → bool
  /// Whether this collection has at least one element.
  print('isNotEmpty: ${exampleList.isNotEmpty}');

  /// iterator → Iterator<E>
  /// A new Iterator that allows iterating the elements of this Iterable.
  print('iterator: ${exampleList.iterator}');

  /// last ↔ E
  /// The last element.
  print('last: ${exampleList.last}');

  /// length ↔ int
  /// The number of objects in this list.
  print('length: ${exampleList.length}');

  /// reversed → Iterable<E>
  /// An Iterable of the objects in this list in reverse order.
  print('reversed: ${exampleList.reversed.toList()}');

  /// runtimeType → Type
  /// A representation of the runtime type of the object.
  print('runtimeType: ${exampleList.runtimeType}');

  /// single → E
  /// Checks that this iterable has only one element, and returns that element.
  // print('single: ${exampleList.single}'); // This line throws an error because the list has more than one element

  /// Methods
  print('\n--Methods--');

  /// add(E value) → void
  /// Adds value to the end of this list, extending the length by one.
  print('add:');
  print(' before: $exampleList');
  exampleList.add('d');
  print(' after: $exampleList');

  /// addAll(Iterable<E> iterable) → void
  /// Appends all objects of iterable to the end of this list.
  print('addAll:');
  print(' before: $exampleList');
  exampleList.addAll(['e', 'f']);
  print(' after: $exampleList');

  /// any(bool test(E element)) → bool
  /// Checks whether any element of this iterable satisfies test.
  print(
      "any: is any element in the list is equal to 'c'? ${exampleList.any((e) => e == 'c')}");
  print(
      'any: is any element in the list is equal to 1? ${exampleList.any((e) => e == 1)}');

  /// asMap() → Map<int, E>
  /// An unmodifiable Map view of this list.
  print('asMap: ${exampleList.asMap()}');

  /// cast<R>() → List<R>
  /// Returns a view of this list as a list of R instances.
  /// Create a list of one type from a list of another type, taking into account its restrictions.
  List<String> stringList = ['1', '2', '3'];
  List<Object> castList = stringList.cast<Object>();
  print('cast: $castList');

  /// clear() → void
  /// Removes all objects from this list; the length of the list becomes zero.
  print('clear:');
  print(' before: $exampleList');
  exampleList.clear();
  print(' after: $exampleList');

  /// contains(Object? element) → bool
  /// Whether the collection contains an element equal to element.
  exampleList.addAll(['a', 'b', 'c', 'd', 'e', 'f']);
  print(
      "contains: does the list contain an element equal to 'b'? ${exampleList.contains('b')}");
  print(
      "contains: does the list contain an element equal to 'g'? ${exampleList.contains('g')}");

  /// elementAt(int index) → E
  /// Returns the indexth element.
  print(
      "elementAt: the index of the 'e' element is ${exampleList.indexOf('e')}");
}
