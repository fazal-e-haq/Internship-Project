# Flutter Login App

A simple Flutter project demonstrating a basic login screen, form validation, and navigation between screens.

---

## 📱 Features

### ✔️ Basic UI
- Login screen with:
    - Email `TextFormField`
    - Password `TextFormField`
    - Login button
    - "Forgot Password?" text
- UI structured using:
    - `Column`
    - `Container`
    - `SizedBox`
    - `Padding`

---

## ✔️ Form Validation
- Email must end with **@gmail.com**
- Password field cannot be empty
- Invalid input shows:
    - SnackBar message indicating the error

---

## ✔️ Navigation
- Login screen → Home screen using:
  ```dart
  Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => HomePage()),
  );
