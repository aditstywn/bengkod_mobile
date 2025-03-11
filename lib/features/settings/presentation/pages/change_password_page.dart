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
        title: const Text('Ubah Kata Sandi'),
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
                    label: 'Kata Sandi Lama',
                    hintext: 'Masukkan Kata Sandi Lama',
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
                    label: 'Kata Sandi Baru',
                    hintext: 'Masukkan Kata Sandi Baru',
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
                    label: 'Konfirmasi Password Baru',
                    hintext: 'Konfirmasi Kata SandiBaru',
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
                  context.showAlert(true, 'Update Password Berhasil');
                },
                error: (message) {
                  context.showAlert(false, message);
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

                      context
                          .read<SettingsBloc>()
                          .add(SettingsEvent.updatePassword(updatePassword));
                    },
                    label: 'Ubah Kata Sandi',
                  );
                },
                loading: () => Button.filled(
                  onPressed: () {},
                  label: 'Loading...',
                  isLoading: true,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
