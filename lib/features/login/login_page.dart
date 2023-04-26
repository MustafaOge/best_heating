import 'package:best_heating/features/home/HomeView.dart';
import 'package:best_heating/features/login/login_provider.dart';
import 'package:best_heating/product/constants/theme/project_color.dart';
import 'package:best_heating/product/widget/appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kartal/kartal.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final loginProvider = StateNotifierProvider<LoginProvider, int>((ref) {
    return LoginProvider();
  });

  @override
  Widget build(BuildContext context) {
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
              Text(ref.watch(loginProvider).toString()),
              Column(
                children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Firma Id',
                      hintText: '',
                    ),
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Parola',
                      hintText: '',
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginView()));
                  },
                  child: SizedBox(
                    width: double.infinity,
                    height: context.dynamicHeight(0.1),
                    child: Center(
                      child: Text(
                        "Giriş Yap",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: ProjectColors.white),
                        textAlign: TextAlign.center,
                        textScaleFactor: ScaleSize.textScaleFactor(context),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
