import 'package:center_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: gradiantScaffoldColor(
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal: size.width*0.05),
          child: Column(
            children: [
              splashSizeBoxStart(context),
              Image.asset('assets/images/big.png'),
              SizedBox(
                height: size.height * 0.05,
              ),
              defaultFormField(
                context,
                controller: emailController,
                type: TextInputType.emailAddress,
                validate: (value) {
                  if (value!.isEmpty)
                  {
                    return 'Pleas enter your Mobile Number';
                  }
                  return null;
                },
                label: 'Email',
              )
            ],
          ),
        ),
      ),
    );
  }
}
