
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/widgets/custom_elevated_button.dart';
import 'package:miswan_s_application3/widgets/custom_text_form_field.dart';
import 'bloc/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Scaffold(
        backgroundColor: appTheme.deepPurpleA200,
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state.error != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.error!)),
                    );
                  }
                  if (state.isAuthenticated) {
                    Navigator.pushReplacementNamed(context, '/home');
                  }
                },
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 60),
                      Text(
                        'Login with Phone',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40),
                      CustomTextFormField(
                        controller: state.phoneController,
                        hintText: "+1234567890",
                        textInputType: TextInputType.phone,
                        prefix: Icon(Icons.phone, color: Colors.white),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter phone number';
                          }
                          return null;
                        },
                      ),
                      if (state.showOtpField) ...[
                        SizedBox(height: 20),
                        CustomTextFormField(
                          controller: state.otpController,
                          hintText: "Enter OTP",
                          textInputType: TextInputType.number,
                          prefix: Icon(Icons.lock_outline, color: Colors.white),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter OTP';
                            }
                            return null;
                          },
                        ),
                      ],
                      SizedBox(height: 30),
                      CustomElevatedButton(
                        text: state.showOtpField ? "Verify OTP" : "Send OTP",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            if (!state.showOtpField) {
                              context.read<LoginBloc>().add(
                                SendOtpEvent(state.phoneController.text),
                              );
                            } else {
                              context.read<LoginBloc>().add(
                                VerifyOtpEvent(state.otpController.text),
                              );
                            }
                          }
                        },
                        buttonStyle: CustomButtonStyles.fillPrimary,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
