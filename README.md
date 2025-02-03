# Handling Exceptions in Asynchronous Dart Code

This example showcases proper exception handling in asynchronous Dart code.  It demonstrates how to catch and handle various exceptions (TimeoutException, SocketException, FormatException) during a simulated network request.  The solution provides a robust approach to preventing crashes due to unexpected errors.

## Setup

No specific setup is required.  This code runs directly using the Dart VM.

## Running the Code

1. Save the `bug.dart` and `bugSolution.dart` files.
2. Run the code using the Dart command line: `dart bug.dart` and `dart bugSolution.dart`

## Key improvements in bugSolution.dart

*   **Specific Exception Handling:** The `bugSolution.dart` file uses `try-catch` blocks to handle multiple potential exceptions (TimeoutException, SocketException, FormatException) more specifically.  This prevents a generic `catch` from obscuring important error details.
*   **Informative Error Messages:** The code prints informative error messages to help in debugging.
*   **Error Handling:**  It includes placeholder comments suggesting appropriate error handling strategies for each exception.