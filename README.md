# ☕ Coffee Shop - Clean Architecture Demo

A technically structured Flutter app demonstrating **advanced Clean Architecture** principles through a **modularized project setup**.

This project is designed to showcase how Flutter applications can be built with a scalable and maintainable architecture suitable for production-level development.

---

## 📐 Architecture Overview

This app follows the principles of **Clean Architecture**, separating the codebase into independent layers:

- **Presentation Layer**: UI logic using `flutter_bloc`
- **Domain Layer**: Business rules, use cases, and entities
- **Data Layer**: Repositories, data sources (remote/local)

The project is organized into modular packages:


Each module encapsulates its responsibilities:
- `app`: UI and presentation logic
- `core_testing`: Shared test utilities and mock setups
- `data`: Implementation of data layer (repositories, data sources)
- `di`: Dependency injection setup
- `domain`: Use cases and business logic

---

## ⚙️ Tech Stack & Key Libraries

- 🧱 **Architecture**: Clean Architecture (Presentation – Domain – Data)
- 🧩 **Modular Project Structure**: Feature-based module separation
- 💉 **Dependency Injection**: [`get_it`](https://pub.dev/packages/get_it), [`injectable`](https://pub.dev/packages/injectable)
- ⚙️ **Functional Programming**: [`dartz`](https://pub.dev/packages/dartz)
- 🧪 **Testing**: [`flutter_test`](https://pub.dev/packages/flutter_test), [`mockito`](https://pub.dev/packages/mockito), `core_testing`
- 🧰 **Code Generation**: [`build_runner`](https://pub.dev/packages/build_runner), [`injectable_generator`](https://pub.dev/packages/injectable_generator)
- 🎨 **UI Utilities**: [`flutter_bloc`](https://pub.dev/packages/flutter_bloc), [`flutter_gen`](https://pub.dev/packages/flutter_gen), [`flutter_screenutil`](https://pub.dev/packages/flutter_screenutil), [`google_fonts`](https://pub.dev/packages/google_fonts)

---

## 🧪 Testing & Code Quality

- ✅ **Unit and Integration Tests**  
  Located in the `core_testing` module to ensure reusability across modules.
  
- 🔍 **Mockito for Mocks**  
  Easily mock dependencies for isolated testing.

---

## 🎯 Purpose

Although the UI is minimal (just two screens), this project was built to:

- Demonstrate a **clean, scalable structure**
- Apply **best practices** in separation of concerns
- Implement **full DI support**
- Showcase how to make Flutter apps **testable and maintainable**

---

## 📬 Contact

Feel free to reach out if you have questions, feedback, or collaboration ideas!

- 💼 LinkedIn: [Mahmoud Ahmed](https://www.linkedin.com/in/bytevortex0)
- 📧 Email: mahmodahmed201559@gmail.com
- 💬 WhatsApp: [Chat on WhatsApp](https://wa.me/201018452234)

