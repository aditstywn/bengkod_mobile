import '../../../../core/components/custom_text_field.dart';
import '../../../../core/extensions/build_context_ext.dart';
import '../../data/models/request/update_password_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/components/buttons.dart';
import '../../../../core/components/spaces.dart';
import '../../../../core/config/app_color.dart';
import '../bloc/settings_bloc.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _isObscureOldPassword = true;
  bool _isObscureNewPassword = true;
  bool _isObscureConfirmPassword = true;

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Password'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        children: [
          Card(
            color: AppColors.white,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  CustomTextField(
                    obscureText: _isObscureOldPassword,
                    controller: _oldPasswordController,
                    label: 'Password',
                    hintext: 'Enter your old password',
                    textInputAction: TextInputAction.next,
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          _isObscureOldPassword = !_isObscureOldPassword;
                        });
                      },
                      child: Icon(
                        _isObscureOldPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                  const SpaceHeight(16),
                  CustomTextField(
                    obscureText: _isObscureNewPassword,
                    controller: _newPasswordController,
                    label: 'New Password',
                    hintext: 'Add new password',
                    textInputAction: TextInputAction.next,
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          _isObscureNewPassword = !_isObscureNewPassword;
                        });
                      },
                      child: Icon(
                        _isObscureNewPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                  const SpaceHeight(16),
                  CustomTextField(
                    obscureText: _isObscureConfirmPassword,
                    controller: _confirmPasswordController,
                    label: 'Confirm Password',
                    hintext: 'Confirm new password',
                    textInputAction: TextInputAction.done,
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          _isObscureConfirmPassword =
                              !_isObscureConfirmPassword;
                        });
                      },
                      child: Icon(
                        _isObscureConfirmPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SpaceHeight(18),
          BlocConsumer<SettingsBloc, SettingsState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                updatePasswordSuccess: (updatePasswordResponseModel) {
                  context.pushReplacement(const ChangePasswordPage());
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.green,
                      content: Text(
                        'Update Success',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                },
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                        message,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return Button.filled(
                    onPressed: () {
                      final updatePassword = UpdatePasswordRequestModel(
                        oldPassword: _oldPasswordController.text,
                        newPassword: _newPasswordController.text,
                        retypePassword: _confirmPasswordController.text,
                      );

                      print(updatePassword.toJson());

                      context
                          .read<SettingsBloc>()
                          .add(SettingsEvent.updatePassword(updatePassword));

                      // _oldPasswordController.clear();
                      // _newPasswordController.clear();
                      // _confirmPasswordController.clear();
                    },
                    label: 'Change Password',
                  );
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
