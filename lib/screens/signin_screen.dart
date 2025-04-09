import 'package:flutter/material.dart';
import 'package:giotin_frontend/widgets/custom_scaffold.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:giotin_frontend/screens/signup_screen.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _formSignInKey = GlobalKey<FormState>();
  bool rememberPassword = true;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              height:10,
              ),
              ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),

              ),
            ),
            child: SingleChildScrollView(
              child: Form(
                key: _formSignInKey,
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Tekrar Hoşgeldiniz!',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 20, 75, 22)
                      ),
                    ),
                    const SizedBox(height: 50), // 20 piksel boşluk bırakır
              
                    TextFormField(
                      validator: (value) {
                        if(value == null ||value.isEmpty) {
                          return 'Lütfen mailinizi giriniz';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: const Text('Email'),
                        hintText: 'Mailinizi Giriniz',
                        hintStyle: const TextStyle(
                          color: Colors.black26,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30), // 20 piksel boşluk bırakır
              
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      validator: (value) {
                        if(value == null ||value.isEmpty) {
                          return 'Lütfen Şifrenizi giriniz';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: const Text('Şifre'),
                        hintText: 'Şifre Giriniz',
                        hintStyle: const TextStyle(
                          color: Colors.black26,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height:30), // 20 piksel boşluk bırakır
              
                    Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: rememberPassword, 
                              onChanged: (bool? value) {
                                setState(() {
                                  rememberPassword = value!;
                                });
                              },
                              activeColor:Color.fromARGB(255, 20, 75, 22),
                            ),
                            const Text(
                              'Beni Hatırla',
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          child: Text(
                            'Şifremi Unuttum',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 20, 75, 22),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30), // 20 piksel boşluk bırakır
              
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed:(){
                          if(_formSignInKey.currentState!.validate() && rememberPassword){
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('veri işleme'),
                              ),
                            );
                          } else if (!rememberPassword) {
                             ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Kişisel Veri İşleme'),
                              ),
                            );
                          }
                        }, 
                        child: const Text('Giriş Yap'),
                        ),
                    ),
                    const SizedBox(height: 30),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        ),
                        const Padding(padding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 10,
                        ),
                        child: Text(
                          'Birlikte Giriş Yap',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                        ),
                        Expanded(child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        ),                        
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Logo(Logos.facebook_f),
                        Logo(Logos.twitter),
                        Logo(Logos.google),
                        Logo(Logos.apple),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Bir Hesabınız Yok mu? ',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (e) => const SignUpScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Kayıt Ol',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 20, 75, 22),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                     
                  ],
                ),
                ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}