import 'package:flutter/material.dart';
import 'package:giotin_frontend/screens/signin_screen.dart';
import 'package:giotin_frontend/screens/signup_screen.dart';
import 'package:giotin_frontend/widgets/custom_scaffold.dart';
import 'package:giotin_frontend/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 40.0,
            ),
            child: Center(child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'giotin\n',
                    style: TextStyle(
                      fontSize: 55.0,
                      fontWeight: FontWeight.w600,
                    )),
                  TextSpan(
                    text: '\n Kişisel güvenliğinizi artıran, flaş destekli fotoğraf ve konum bildirimi yapan akıllı biber gazı modülü!',
                    style: TextStyle(
                      fontSize: 25,
                    ))
                ],
              ), 
              ),
              ),
          )),
          const Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                    children: [
                      Expanded(
                        child: WelcomeButton(
                          buttonText: 'Giriş Yap',
                          onTap: SigninScreen(),
                          color: Colors.transparent,
                          textColor: Color.fromARGB(255, 159, 199, 161)
                        ),
                        ),
                      Expanded(
                        child: WelcomeButton(
                          buttonText: 'Kayıt Ol',
                          onTap: SignUpScreen(),
                          color: Colors.white,
                          textColor: Color.fromARGB(255, 20, 75, 22)


                        ),
                        ),               
              
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}