// import 'package:best_heating/product/widget/appBar.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:kartal/kartal.dart';

// import '../../../product/constants/theme/project_color.dart';
// import '../login_page.dart';
// import 'email_verification_page.dart';

// class AuthPage extends StatefulWidget {
//   const AuthPage({Key? key}) : super(key: key);

//   @override
//   State<AuthPage> createState() => _AuthPageState();
// }

// class _AuthPageState extends State<AuthPage> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   bool _isLoading = false;

//   static Future<User?> signUp(
//       {required String userEmail,
//       required String password,
//       required BuildContext context}) async {
//     try {
//       UserCredential userCredential = await FirebaseAuth.instance
//           .createUserWithEmailAndPassword(email: userEmail, password: password);
//       return userCredential.user;
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//             content: Text('The password provided is too weak.')));
//       } else if (e.code == 'email-already-in-use') {
//         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//             content: Text('The account already exists for that email.')));
//       }
//       return null;
//     } catch (e) {
//       debugPrint(e.toString());
//       return null;
//     }
//   }

//   double minBorderRadius = 6;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           //  mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             CustomAppBarLogin(appBarName: "Kayıt Ol"),
//             Padding(
//               padding: context.paddingMedium,
//               child: Expanded(
//                 flex: 2,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     SizedBox(
//                       height: context.height * 0.2,
//                     ),
//                     TextFormField(
//                       controller: _emailController,
//                       // validator: (val) => widget.onValidate(val),
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(minBorderRadius),
//                           borderSide:
//                               const BorderSide(color: Colors.grey, width: 1),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(minBorderRadius),
//                           borderSide:
//                               const BorderSide(color: Colors.grey, width: 1),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(minBorderRadius),
//                           borderSide:
//                               const BorderSide(color: Colors.grey, width: 1),
//                         ),
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: 'Enter Email',
//                         // hintStyle: AppTextStyle.lightGreyText,
//                         isDense: true,
//                         contentPadding: const EdgeInsets.symmetric(
//                             horizontal: 8, vertical: 15),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     TextFormField(
//                       controller: _passwordController,
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(minBorderRadius),
//                           borderSide:
//                               const BorderSide(color: Colors.grey, width: 1),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(minBorderRadius),
//                           borderSide:
//                               const BorderSide(color: Colors.grey, width: 1),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(minBorderRadius),
//                           borderSide:
//                               const BorderSide(color: Colors.grey, width: 1),
//                         ),
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: 'Enter Password',
//                         // hintStyle: AppTextStyle.lightGreyText,
//                         isDense: true,
//                         contentPadding: const EdgeInsets.symmetric(
//                             horizontal: 12, vertical: 15),
//                       ),
//                       obscureText: true,
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     _isLoading
//                         ? const CircularProgressIndicator()
//                         : ElevatedButton(
//                             onPressed: () async {
//                               setState(() {
//                                 _isLoading = true;
//                               });
//                               await signUp(
//                                   userEmail: _emailController.text,
//                                   password: _passwordController.text,
//                                   context: context);
//                               if (auth.currentUser != null) {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (ctx) =>
//                                             const EmailVerificationScreen()));
//                               }
//                               setState(() {
//                                 _isLoading = false;
//                               });
//                             },
//                             child: SizedBox(
//                               width: double.infinity,
//                               height: context.dynamicHeight(0.07),
//                               child: Center(
//                                 child: Text(
//                                   "Kayıt Ol",
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .bodyLarge
//                                       ?.copyWith(
//                                           color: Colors.white, fontSize: 20),
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ),
//                             ),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: ProjectColors.buttonGrey,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                               ),
//                               //
//                             ),
//                           ),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: SizedBox(
//                 height: context.height * 01,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../login_page.dart';
import 'email_verification_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  static Future<User?> signUp(
      {required String userEmail,
      required String password,
      required BuildContext context}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: userEmail, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('The password provided is too weak.')));
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('The account already exists for that email.')));
      }
      return null;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                // validator: (val) => widget.onValidate(val),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter Email',
                  // hintStyle: AppTextStyle.lightGreyText,
                  isDense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter Password',
                  // hintStyle: AppTextStyle.lightGreyText,
                  isDense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              _isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          _isLoading = true;
                        });
                        await signUp(
                            userEmail: _emailController.text,
                            password: _passwordController.text,
                            context: context);
                        if (auth.currentUser != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) =>
                                      const EmailVerificationScreen()));
                        }
                        setState(() {
                          _isLoading = false;
                        });
                      },
                      child: const Text('Sign Up'))
            ],
          ),
        ),
      ),
    );
  }
}
