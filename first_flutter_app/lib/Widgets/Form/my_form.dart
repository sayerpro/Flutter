import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController mobileCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController repeatPasswordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: nameCtrl,
            decoration: const InputDecoration(labelText: "Nombre"),
            validator: (value) => validations(nameCtrl.text, "Nombre"),
          ),
          TextFormField(
              controller: emailCtrl,
              decoration: const InputDecoration(labelText: "Correo"),
              validator: (value) => validations(emailCtrl.text, "Correo"),
              keyboardType: TextInputType.emailAddress),
          TextFormField(
              maxLength: 10,
              controller: mobileCtrl,
              decoration: const InputDecoration(labelText: "Telefono"),
              validator: (value) => validations(mobileCtrl.text, "Telefono"),
              keyboardType: TextInputType.number),
          TextFormField(
              controller: passwordCtrl,
              decoration: const InputDecoration(labelText: "Contraseña"),
              validator: (value) => validations(passwordCtrl.text, "Contraseña"),
              obscureText: true),
          TextFormField(
              controller: repeatPasswordCtrl,
              decoration: const InputDecoration(labelText: "Repetir contraseña"),
              validator: (value) => validations(repeatPasswordCtrl.text, "Repetir contraseña"),
              obscureText: true),
          ElevatedButton(onPressed: save, child: const Text("Guardar"))
        ],
      ),
    );
  }

  save() {
    if (formKey.currentState!.validate()) {
      // print("Nombre ${nameCtrl.text}");
      // print("email ${emailCtrl.text}");
      // print("mobile ${mobileCtrl.text}");
      // print("paswword ${passwordCtrl.text}");
      // print("repeatPassword ${repeatPasswordCtrl.text}");
      formKey.currentState!.reset();
    }
  }

  validations(String value, String type) {
    switch (type) {
      case "Nombre":
        if (value.isEmpty) {
          return "Campo requerido";
        }
        return null;
      case "Correo":
        String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';

        RegExp regExp = RegExp(pattern);
        if (value.isEmpty) {
          return "Campo requerido";
        }
        if (!regExp.hasMatch(value)) {
          return "Formato de correo invalido";
        }
        return null;
      case "Telefono":
        if (value.isEmpty) {
          return "Campo requerido";
        }
        if (value.length != 10) {
          return "EL número debe tener 10 digitos";
        }
        return null;
      case "Contraseña":
        if (value.isEmpty) {
          return "Campo requerido";
        }
        return null;
      case "Repetir contraseña":
        if (value.isEmpty) {
          return "Campo requerido";
        }
        if (value != passwordCtrl.text.toString()) {
          return "Las contraseñas deben ser iguales";
        }
        return null;
      default:
        return null;
    }
  }
}
