import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:songgpt/providers/auth_provider.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/auth_button.dart';

// class RegisterScreen extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController confirmPasswordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Welcome to Song GPT',
//               style: Theme.of(context).textTheme.headline4,
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 24),
//             CustomTextField(controller: emailController, hintText: 'Eg. xyz@example.com', labelText: 'Email'),
//             CustomTextField(controller: passwordController, hintText: 'minimum 8 characters', labelText: 'Password', obscureText: true),
//             CustomTextField(controller: confirmPasswordController, hintText: 'Confirm Password', labelText: 'Confirm Password', obscureText: true),
//             SizedBox(height: 16),
//             AuthButton(
//               text: 'Register',
//               onPressed: () {
//                 final email = emailController.text;
//                 final password = passwordController.text;
//                 final confirmPassword = confirmPasswordController.text;
//                 Provider.of<AuthProvider>(context, listen: false).register(email, password, confirmPassword);
//               },
//             ),
//             SizedBox(height: 16),
//             Center(
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text("Already have an account? Login"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  String? confirmPasswordError;

  void validatePasswords() {
    setState(() {
      if (confirmPasswordController.text != passwordController.text) {
        confirmPasswordError = "Passwords do not match";
      } else {
        confirmPasswordError = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome to Song GPT',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            CustomTextField(
              controller: emailController,
              hintText: 'Eg. xyz@example.com',
              labelText: 'Email',
            ),
            SizedBox(height: 16),
            CustomTextField(
              controller: passwordController,
              hintText: 'minimum 8 characters',
              labelText: 'Password',
              isPasswordField: true,
            ),
            SizedBox(height: 16),
            CustomTextField(
              controller: confirmPasswordController,
              hintText: 'Confirm Password',
              labelText: 'Confirm Password',
              isPasswordField: true,
            ),
            if (confirmPasswordError != null)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  confirmPasswordError!,
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
            SizedBox(height: 16),
            AuthButton(
              text: 'Register',
              onPressed: () {
                validatePasswords();
                if (confirmPasswordError == null) {
                  final email = emailController.text;
                  final password = passwordController.text;
                  Provider.of<AuthProvider>(context, listen: false).register(email, password, password);
                }
              },
            ),
            SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Already have an account? Login",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}