```dart
import 'dart:async';
import 'dart:io';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    // Simulate a network error
    var response = await Future.error(Exception('Network Error'));
    print('Data fetched: $response');
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
    // Handle timeout appropriately, maybe retry or show a message
  } on SocketException catch (e) {
    print('SocketException: $e');
    // Handle socket errors, retry, or show error
  } on FormatException catch (e) {
    print('FormatException: $e');
    // Handle format errors, data parsing, validation error
  } catch (e) {
    print('An unexpected error occurred: $e');
    // Handle any other exceptions
  }
}

void main() async {
  await fetchData();
}
```