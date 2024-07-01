# Widget SpacedLayout for Flutter

## Overview
The SpacedLayout widget is a custom Flutter widget designed to simplify the spacing of widgets within rows and columns. It provides an easy way to add consistent spacing between child widgets, enhancing the layout flexibility and readability of your Flutter applications.

## Features
 - Directional Control: Choose between horizontal and vertical spacing configurations.
 - Customizable Spacing: Adjust the spacing between widgets according to your design needs.
 - Alignment Options: Control how widgets are aligned along the main and cross axes.
 - MainAxisSize Configuration: Specify how much space the layout should occupy along the main axis.

## Tutorial Video
[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/FOulEzcqCM4/0.jpg)](https://www.youtube.com/watch?v=FOulEzcqCM4)

## Getting Started

In your library add the following import:

```dart
import 'package:your_package_name/spaced_layout.dart';
```

Then you just have to add a `SpacedLayout` widget in your Flutter code:

```dart
SpacedLayout(
  direction: SpacingDirection.horizontal, // or SpacingDirection.vertical
  spacing: 8.0,
  children: [
    // Add your widgets here
    Container(width: 50, height: 50, color: Colors.blue),
    Container(width: 50, height: 50, color: Colors.green),
    Container(width: 50, height: 50, color: Colors.red),
  ],
);
```
