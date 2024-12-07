import 'package:bengkod_mobile_app/core/components/buttons.dart';
import 'package:bengkod_mobile_app/core/components/spaces.dart';
import 'package:bengkod_mobile_app/core/config/app_color.dart';
import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:bengkod_mobile_app/features/auth/data/datasource/auth_local_datasource.dart';
import 'package:bengkod_mobile_app/features/main_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/components/custom_text_field.dart';
import '../../data/models/request/login_request_model.dart';
import '../bloc/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isObscure = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SpaceHeight(100),
          SvgPicture.asset(
            'assets/icons/logo_bengkod.svg',
            height: 120,
            width: 120,
          ),
          const SpaceHeight(16),
          const Center(
            child: Text(
              "Mobile Bengkod LMS",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
          ),
          const SpaceHeight(60),
          CustomTextField(
            controller: emailController,
            label: 'Email',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
          ),
          const SpaceHeight(16),
          CustomTextField(
            controller: passwordController,
            label: 'Password',
            obscureText: isObscure,
            textInputAction: TextInputAction.done,
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              child: Icon(isObscure ? Icons.visibility_off : Icons.visibility),
            ),
          ),
          const SpaceHeight(20),
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loginSuccess: (loginResponseModel) {
                  AuthLocalDatasource().saveAuthData(loginResponseModel);
                  AuthLocalDatasource().saveToken(loginResponseModel.token);

                  context.pushReplacement(const MainNav());
                },
                error: (message) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Row(
                          children: [
                            Icon(
                              Icons.error,
                              color: Colors.red,
                            ),
                            SpaceWidth(8),
                            Text('Info Error'),
                          ],
                        ),
                        content: Text(message),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Close',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                orElse: () {
                  return Button.filled(
                    onPressed: () {
                      final login = LoginRequestModel(
                        email: "111202214636@mhs.dinus.ac.id",
                        // email: "111202214654@mhs.dinus.ac.id",
                        // email: "111202214002@mhs.dinus.ac.id",
                        password: "Tester@123",
                        // email: "111202113716@mhs.dinus.ac.id",
                        // password: "Student@123",
                      );
                      // final login = LoginRequestModel(
                      //   email: emailController.text,
                      //   password: passwordController.text,
                      // );
                      context.read<AuthBloc>().add(AuthEvent.login(login));

                      emailController.clear();
                      passwordController.clear();
                    },
                    label: 'Masuk',
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
