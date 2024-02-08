import 'package:flutter/material.dart';

extension on VoidCallback {
  /// Extension on [VoidCallback] that adds a delay before executing the callback.
  ///
  /// The `delay` method takes a [Duration] parameter and waits for the specified duration
  /// before executing the callback function. It uses the [Future.delayed] method to pause
  /// the execution for the given duration. Once the duration has passed, the callback function
  /// is invoked using the `this` reference.
  ///
  /// Example usage:
  /// ```dart
  /// VoidCallback callback = () {
  ///   print('Delayed execution');
  /// };
  ///
  /// callback.delay(Duration(seconds: 2)); // Executes the callback after 2 seconds
  /// ```
  Future<void> delay(Duration duration) async {
    await Future.delayed(duration, this);
    this();
  }
}
