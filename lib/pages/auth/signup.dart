import 'package:flutter/material.dart';
import 'package:projektes/theme.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    // widget header start
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: texttextstyle.copyWith(
                  fontSize: 26, fontWeight: bold, color: bg),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Register and Happy Shopping',
              style: texttextstyle.copyWith(),
            )
          ],
        ),
      );
    }
    // widget header end

    // widget namelInput start
    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: texttextstyle.copyWith(fontSize: 18, fontWeight: medium),
            ),
            SizedBox(height: 12),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: primaryTextColor, borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_name.png',
                      width: 18,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Your Full Name',
                          hintStyle: texttextstyle.copyWith(color: isifrom)),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget usermameInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Usename',
              style: texttextstyle.copyWith(fontSize: 18, fontWeight: medium),
            ),
            SizedBox(height: 12),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: primaryTextColor, borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_username.png',
                      width: 18,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Your Username',
                          hintStyle: texttextstyle.copyWith(color: isifrom)),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: texttextstyle.copyWith(fontSize: 18, fontWeight: medium),
            ),
            SizedBox(height: 12),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: primaryTextColor, borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_email.png',
                      width: 18,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: texttextstyle.copyWith(color: isifrom)),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    // passwordInput star
    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: texttextstyle.copyWith(fontSize: 18, fontWeight: medium),
            ),
            SizedBox(height: 12),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: primaryTextColor, borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_password.png',
                      width: 18,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration.collapsed(
                          hintText: 'Your Password',
                          hintStyle: texttextstyle.copyWith(color: isifrom)),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }
    // passwordIbput end

    // signin button start
    Widget signUpButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: TextButton.styleFrom(
              backgroundColor: bg,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Text(
            'Sign Up',
            style: texttextstyle.copyWith(
                fontSize: 16, color: putih, fontWeight: medium),
          ),
        ),
      );
    }
    // Signin button end

// footer start
    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account? ',
              style: texttextstyle.copyWith(
                fontSize: 14,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Sign In',
                style: texttextstyle.copyWith(
                    fontSize: 14, fontWeight: bold, color: bg),
              ),
            )
          ],
        ),
      );
    }
    // footer end

    return Scaffold(
        backgroundColor: putih,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                nameInput(),
                usermameInput(),
                emailInput(),
                passwordInput(),
                signUpButton(),
                Spacer(),
                footer(),
              ],
            ),
          ),
        ));
  }
}
