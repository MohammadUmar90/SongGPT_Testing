import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/auth_provider.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/auth_button.dart';
import 'register_screen.dart';

// class LoginScreen extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

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
//               'Welcome Back to Song GPT',
//               style: Theme.of(context).textTheme.headline4,
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 24),
//             CustomTextField(controller: emailController, hintText: 'Eg. xyz@example.com', labelText: 'Email'),
//             CustomTextField(controller: passwordController, hintText: 'minimum 8 characters', labelText: 'Password', obscureText: true),
//             Align(
//               alignment: Alignment.centerRight,
//               child: TextButton(
//                 onPressed: () {},
//                 child: Text('Forgot Password?'),
//               ),
//             ),
//             SizedBox(height: 16),
//             AuthButton(
//               text: 'Login',
//               onPressed: () {
//                 final email = emailController.text;
//                 final password = passwordController.text;
//                 Provider.of<AuthProvider>(context, listen: false).login(email, password);
//               },
//             ),
//             AuthButton(
//               text: 'Login with Google',
//               icon: Icons.g_mobiledata,
//               onPressed: () {},
//               backgroundColor: Colors.white,
//               textColor: Colors.black,
//             ),
//             SizedBox(height: 16),
//             Center(
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
//                 },
//                 child: Text("Don't have an account? Register"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              'Welcome Back to Song GPT',
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
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ),
            SizedBox(height: 16),
            AuthButton(
              text: 'Login',
              onPressed: () {
                final email = emailController.text;
                final password = passwordController.text;
                Provider.of<AuthProvider>(context, listen: false).login(email, password);
              },
            ),
            SizedBox(height: 8),
            AuthButton(
              text: 'Login with Google',
              icon: Icons.g_mobiledata,
              onPressed: () {},
              
            ),
            SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                },
                child: Text(
                  "Don't have an account? Register",
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