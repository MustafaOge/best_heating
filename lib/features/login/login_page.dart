import 'package:best_heating/product/constants/theme/project_color.dart';
import 'package:best_heating/product/widget/appBar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../product/widget/firebase_learn.dart';
import '../home/home_tab_view.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseApp secondaryApp = Firebase.app('SecondaryApp');

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    //   FirebaseAuth.instance
    // .authStateChanges()
    // .listen((User? user) {
    //   if (user == null) {
    //     print('User is currently signed out!');
    //   } else {
    //     print('User is signed in!');
    //   }
    // });
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: ProjectColors.background,
      appBar: CustomAppBarLogin(
        appBarName: "Giriş Yap",
      ),
      body: SafeArea(
        child: Padding(
          padding: context.paddingMedium,
          child: Column(
            children: [
              // Text(ref.watch(loginProvider).toString()),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Firma Id',
                        hintText: '',
                      ),
                    ),
                    context.emptySizedHeightBoxLow,
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Parola',
                        hintText: '',
                      ),
                    ),
                    context.emptySizedHeightBoxNormal,
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomeTabView()));
                      },
                      child: SizedBox(
                        width: double.infinity,
                        height: context.dynamicHeight(0.07),
                        child: Center(
                          child: Text(
                            "Giriş Yap",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ProjectColors.buttonGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        //
                      ),
                    ),
                  ],
                ),
              ),
              AddUser("Sombahcem", "Mustafa", 4),
              Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Şifremi Unuttum",
                            style: TextStyle(color: ProjectColors.buttonGrey),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'firebaseAuth');
                          },
                          child: Text(
                            "Kayıt Ol",
                            style: TextStyle(color: ProjectColors.black),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
