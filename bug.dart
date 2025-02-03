```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    //This line may throw an exception if the server sends an error response.
    var response = await Future.error(Exception('Network Error')); 
    print('Data fetched: $response');
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
    // Handle timeout
  } on SocketException catch (e) {
    print('SocketException: $e');
    // Handle socket errors
  } on FormatException catch (e) {
    print('FormatException: $e');
    //Handle Format Exception
  } catch (e) {
    print('Error: $e');
    // Handle other exceptions
  }
}

void main() async {
  await fetchData();
}
```