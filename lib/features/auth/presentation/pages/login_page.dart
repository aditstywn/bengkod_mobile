import 'package:bengkod_mobile_app/core/components/buttons.dart';
import 'package:bengkod_mobile_app/core/components/spaces.dart';
import 'package:bengkod_mobile_app/core/config/app_color.dart';
import 'package:bengkod_mobile_app/core/extensions/build_context_ext.dart';
import 'package:bengkod_mobile_app/features/auth/data/datasource/auth_local_datasource.dart';
import 'package:bengkod_mobile_app/features/main_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/components/custom_checkbox.dart';
import '../../../../core/components/custom_text_field.dart';
import '../../../../core/config/url.dart';
import '../../../class/presentation/bloc/class/class_bloc.dart';
import '../../../home/presentation/bloc/active_course/active_course_bloc.dart';
import '../../../home/presentation/bloc/latest_assignment/latest_assignment_bloc.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import '../../data/models/request/login_request_model.dart';
import '../bloc/auth/auth_bloc.dart';
import '../bloc/google/google_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isObscure = true;
  bool isRemember = false;

  void getKredensial() async {
    final email = await AuthLocalDatasource().getRememberMe();

    setState(() {});
    if (email.isNotEmpty) {
      emailController.text = email;
      setState(() {
        isRemember = true;
      });
    } else {
      setState(() {
        isRemember = false;
      });
    }
  }

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    serverClientId: Url.clientId,
    scopes: ['email', 'profile', 'openid'],
  );

  Future<void> _handleGoogleSignIn(BuildContext context) async {
    try {
      await _googleSignIn.signOut();
      final account = await _googleSignIn.signIn();
      if (account != null) {
        final auth = await account.authentication;
        final idToken = auth.idToken;

        // debugPrint('ID Token: $idToken');

        if (idToken != null) {
          final googleRequest = idToken;
          if (context.mounted) {
            context
                .read<GoogleBloc>()
                .add(GoogleEvent.googleSignIn(googleRequest));
          }
        }
      }
    } catch (error) {
      debugPrint('Error signing in with Google: $error');
      if (context.mounted) {
        context.showAlert(
          false,
          'Gagal Masuk Dengan Google',
        );
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     content: Text('Login Google Gagal: $error'),
        //     backgroundColor: Colors.red,
        //   ),
        // );
      }
    }
  }

  @override
  void initState() {
    super.initState();
    getKredensial();
  }

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
        padding: const EdgeInsets.all(24),
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
            label: 'Kata Sandi',
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
          Row(
            children: [
              CustomCheckbox(
                value: isRemember,
                onChanged: (value) {
                  setState(() {
                    isRemember = value ?? false;
                  });

                  if (isRemember) {
                    if (emailController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty) {
                      AuthLocalDatasource()
                          .saveRememberMe(emailController.text);
                    }
                  } else {
                    AuthLocalDatasource().removeRememberMe();
                  }
                },
              ),
              Text(
                'Simpan Akun',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
              // Spacer(),
              // GestureDetector(
              //   onTap: () {},
              //   child: Text(
              //     'Lupa Kata Sandi?',
              //     style: TextStyle(
              //       color: AppColors.primary,
              //       fontSize: 12,
              //       fontWeight: FontWeight.w700,
              //     ),
              //   ),
              // ),
            ],
          ),
          const SpaceHeight(10),
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loginSuccess: (loginResponseModel) {
                  AuthLocalDatasource().saveAuthData(loginResponseModel);
                  AuthLocalDatasource().saveToken(loginResponseModel.token);

                  context.pushReplacement(const MainNav());
                  emailController.clear();
                  passwordController.clear();

                  context
                      .read<LatestAssignmentBloc>()
                      .add(const LatestAssignmentEvent.getLatestAssignment());
                  context
                      .read<ActiveCourseBloc>()
                      .add(const ActiveCourseEvent.getActiveCourse());
                  context.read<ClassBloc>().add(const ClassEvent.getClass());
                  context
                      .read<ProfileBloc>()
                      .add(const ProfileEvent.getProfile());
                },
                error: (message) {
                  context.showAlert(
                    false,
                    message,
                    50,
                  );

                  passwordController.clear();
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => Button.filled(
                  onPressed: () {},
                  label: 'Loading...',
                  isLoading: true,
                ),
                orElse: () {
                  return Button.filled(
                    onPressed: () {
                      // final login = LoginRequestModel(
                      // email: "111202214002@mhs.dinus.ac.id",
                      // email: "111202214636@mhs.dinus.ac.id",
                      // password: "Tester@123",
                      // email: "111202113716@mhs.dinus.ac.id",
                      // password: "Student@123",
                      // );
                      final login = LoginRequestModel(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                      context.read<AuthBloc>().add(AuthEvent.login(login));
                    },
                    label: 'Masuk',
                  );
                },
              );
            },
          ),
          SpaceHeight(10),
          BlocConsumer<GoogleBloc, GoogleState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                googleSignInSucess: (googleSignInResponseModel) {
                  AuthLocalDatasource()
                      .saveToken(googleSignInResponseModel.token);
                  AuthLocalDatasource().saveAuthData(googleSignInResponseModel);
                  context.pushReplacement(const MainNav());

                  context
                      .read<LatestAssignmentBloc>()
                      .add(const LatestAssignmentEvent.getLatestAssignment());
                  context
                      .read<ActiveCourseBloc>()
                      .add(const ActiveCourseEvent.getActiveCourse());
                  context.read<ClassBloc>().add(const ClassEvent.getClass());
                  context
                      .read<ProfileBloc>()
                      .add(const ProfileEvent.getProfile());
                },
                error: (message) {
                  context.showAlert(
                    false,
                    message,
                    50,
                  );

                  passwordController.clear();
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => Button.outlined(
                  onPressed: () {},
                  label: 'Loading...',
                  isLoading: true,
                ),
                orElse: () {
                  return Button.outlined(
                    onPressed: () {
                      _handleGoogleSignIn(context);
                    },
                    label: 'Masuk Dengan Google',
                    icon: Image.asset(
                      'assets/images/google.png',
                      height: 24,
                      width: 24,
                    ),
                  );
                },
              );
            },
          ),
          const SpaceHeight(5),
          Text(
            'v2.0.0',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}
