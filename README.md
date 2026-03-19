# 🎯 flutter_bootstrap
```
flutter_bootstrap is a powerful and flexible responsive grid system library for Flutter inspired by the web Bootstrap framework.

It helps developers easily build responsive layouts, admin dashboards, modern web UIs and adaptive mobile interfaces without writing complex MediaQuery logic or layout calculations.

The library provides a 12-column responsive grid, fluid and fixed containers, breakpoint helpers, gutter spacing, offset columns, auto layout support, visibility controls and responsive builder utilities.

Developers can create clean, scalable and modern responsive UI structures for Android, iOS, Web and Desktop applications using a simple lightweight API.
```
---

## ✨ Features
```
- 📱 12 Column Responsive Grid System  
- 📦 Fixed & Fluid BootstrapContainer  
- 🧱 BootstrapRow with gutter spacing  
- 📐 BootstrapColumn responsive sizing (xs, sm, md, lg, xl)  
- ↔️ Offset column positioning  
- ⚡ Auto layout flexible columns  
- 👀 BootstrapVisibility (show / hide by screen size)  
- 🧩 Nested grid layout support  
- 🖥 BootstrapBuilder (detect current breakpoint)  
- 🎨 Reusable UI Widgets (Box & SmallBox)  
- 📦 Lightweight and high performance  
- 🌐 Supports Android, iOS, Web & Desktop  
```
---

##📦 Installation

Add dependency in your pubspec.yaml
```
yaml
dependencies:
  flutter_bootstrap:
    path: ../flutter_bootstrap
```
Then run:
```
flutter pub get
```

----

## 🎬 Preview

https://github.com/user-attachments/assets/a4f5de5f-c5b1-438f-acd3-bc77ccc02a53

----

## 🗂 File Structure
```
flutter_bootstrap/
│
├─ lib/
│   ├─ flutter_bootstrap.dart
│   │   // Main library export file
│   │
│   ├─ main.dart
│   │   // Example demo application
│   │
│   └─ src/
│       └─ widgets/
│           ├─ bootstrap_breakpoints.dart
│           │   // Breakpoint detection logic
│           │
│           ├─ bootstrap_container.dart
│           │   // Responsive container widget
│           │
│           ├─ bootstrap_row.dart
│           │   // Grid row layout widget
│           │
│           ├─ bootstrap_column.dart
│           │   // Responsive column widget
│           │
│           ├─ bootstrap_visibility.dart
│           │   // Visibility control widget
│           │
│           ├─ bootstrap_responsive_builder.dart
│           │   // Responsive builder helper
│           │
│           ├─ bootstrap_box.dart
│           │   // Demo large grid box widget
│           │
│           └─ bootstrap_small_box.dart
│               // Demo small grid box widget
│
├─ README.md
│   // Package documentation
│
├─ LICENSE
│   // Open source license file
│
└─ pubspec.yaml
    // Package configuration file
```

----

## 🚀 How To Use

1️⃣ Import Package
```
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
```
2️⃣ Create Responsive Grid
```
BootstrapRow(
  gutter: 16,
  children: [
    BootstrapColumn(xs: 12, md: 6, lg: 3, child: Box(color: Colors.red, text: "Col 1")),
    BootstrapColumn(xs: 12, md: 6, lg: 3, child: Box(color: Colors.blue, text: "Col 2")),
    BootstrapColumn(xs: 12, md: 6, lg: 3, child: Box(color: Colors.green, text: "Col 3")),
    BootstrapColumn(xs: 12, md: 6, lg: 3, child: Box(color: Colors.orange, text: "Col 4")),
  ],
)
```
3️⃣ Offset Column
```
BootstrapColumn(
  xs: 6,
  offset: 3,
  child: Box(color: Colors.purple, text: "Centered using Offset"),
)
```
4️⃣ Auto Layout Columns
```
Row(
  children: [
    BootstrapColumn(auto: true, child: Box(color: Colors.teal, text: "Auto")),
    BootstrapColumn(auto: true, child: Box(color: Colors.brown, text: "Auto")),
    BootstrapColumn(auto: true, child: Box(color: Colors.pink, text: "Auto")),
  ],
)
```
5️⃣ Nested Grid
```
BootstrapRow(
  children: [
    BootstrapColumn(
      xs: 12,
      md: 6,
      child: BootstrapRow(
        children: [
          BootstrapColumn(xs: 6, child: SmallBox(color: Colors.deepOrange, text: "Nested 1")),
          BootstrapColumn(xs: 6, child: SmallBox(color: Colors.indigo, text: "Nested 2")),
        ],
      ),
    ),
  ],
)
```
6️⃣ Visibility Control
```
BootstrapVisibility(
  visibleOn: ['lg', 'xl'],
  child: Box(color: Colors.deepPurple, text: "Desktop Only"),
)
```
7️⃣ Responsive Builder
```
BootstrapBuilder(
  builder: (breakpoint) {
    return Text("Current Breakpoint : $breakpoint");
  },
)
```

----

## 🎨 Bootstrap Properties

| Feature     | Description                 |
| ----------- | --------------------------- |
| Grid        | 12 column responsive layout |
| Container   | Fixed & fluid layout        |
| Gutters     | Spacing between columns     |
| Offset      | Push column horizontally    |
| Auto Layout | Flexible column sizing      |
| Nested Grid | Grid inside grid            |
| Visibility  | Show/hide per breakpoint    |
| Builder     | Responsive UI switching     |


----

## 📄 MIT License
```
Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files to deal in the Software without restriction.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
```





