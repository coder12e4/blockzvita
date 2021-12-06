import 'package:cheersclub/Utils/managers/user_manager.dart';
import 'package:cheersclub/localization/app_localization.dart';
import 'package:cheersclub/pages/Home.dart';
import 'package:cheersclub/pages/LoginScreen.dart';
import 'package:cheersclub/pages/dashbord.dart';
import 'package:cheersclub/pages/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

import '../cheersclub_text.dart';

class drowerBeforlogin extends StatefulWidget {
  const drowerBeforlogin({Key? key}) : super(key: key);

  @override
  _drowerBeforloginState createState() => _drowerBeforloginState();
}

class _drowerBeforloginState extends State<drowerBeforlogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
          color: HexColor("1A1B1D"),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30))),
      child: Column(
        children: [
          Container(
            height: 120,
            child: Container(
              color: HexColor("131313"),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 13, top: 25),
                    padding: EdgeInsets.all(5),
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.fitHeight,
                      height: 45,
                      //width: 220,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 6),
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(24),
                              border:
                                  Border.all(color: Colors.amber, width: 2)),
                          margin: EdgeInsets.only(right: 20, top: 40),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.amber,
                              size: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                CheersClubText(
                  text: AppLocalizations.of(context).translate('Home'),
                  fontColor: Colors.white,
                  fontSize: 18,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 100,
                    height: 50,
                    color: HexColor("FEC753"),
                    margin: EdgeInsets.only(
                        left: 30, top: 0, bottom: 15, right: 30),
                    child: Center(
                      child: CheersClubText(
                        text: AppLocalizations.of(context).translate('Login'),
                        fontColor: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                CheersClubText(
                  text: AppLocalizations.of(context).translate('Newuser'),
                  fontColor: Colors.white,
                  fontSize: 18,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                CheersClubText(
                  text: AppLocalizations.of(context).translate('Placeanorder'),
                  fontColor: Colors.white,
                  fontSize: 18,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                CheersClubText(
                  text:
                      AppLocalizations.of(context).translate('TermsConditions'),
                  fontColor: Colors.white,
                  fontSize: 18,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                CheersClubText(
                  text: AppLocalizations.of(context)
                      .translate('Privacystatement'),
                  fontColor: Colors.white,
                  fontSize: 18,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                    duration: Duration(milliseconds: 1000),
                    type: PageTransitionType.rightToLeft,
                    child: settings(),
                    inheritTheme: true,
                    ctx: context),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  CheersClubText(
                    text: AppLocalizations.of(context).translate('Settings'),
                    fontColor: Colors.white,
                    fontSize: 18,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                CheersClubText(
                  text: AppLocalizations.of(context).translate('FAQ'),
                  fontColor: Colors.white,
                  fontSize: 18,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                CheersClubText(
                  text: AppLocalizations.of(context).translate('Contactus'),
                  fontColor: Colors.white,
                  fontSize: 18,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class drowerAfterlogin extends StatefulWidget {
  const drowerAfterlogin({Key? key}) : super(key: key);

  @override
  _drowerAfterloginState createState() => _drowerAfterloginState();
}

class _drowerAfterloginState extends State<drowerAfterlogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
          color: HexColor("1A1B1D"),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30))),
      child: Column(
        children: [
          Container(
            height: 120,
            child: Container(
              color: HexColor("131313"),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 13, top: 25),
                    padding: EdgeInsets.all(5),
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.fitHeight,
                      height: 45,
                      //width: 220,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 6),
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(24),
                              border:
                                  Border.all(color: Colors.amber, width: 2)),
                          margin: EdgeInsets.only(right: 20, top: 40),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.amber,
                              size: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){

              Navigator.push(
                context,
                PageTransition(
                    duration: Duration(milliseconds: 1000),
                    type: PageTransitionType.rightToLeft,
                    child: Home(),
                    inheritTheme: true,
                    ctx: context),
              );

            },
            child: Container(
              height: 50,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  CheersClubText(
                    text: AppLocalizations.of(context).translate('Home'),
                    fontColor: Colors.white,
                    fontSize: 18,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                    duration: Duration(milliseconds: 1000),
                    type: PageTransitionType.rightToLeft,
                    child: dash_bord(),
                    inheritTheme: true,
                    ctx: context),
              );
            },
            child: Container(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 100,
                    height: 50,
                    color: HexColor("FEC753"),
                    margin: EdgeInsets.only(
                        left: 30, top: 0, bottom: 15, right: 30),
                    child: Center(
                      child: CheersClubText(
                        text:
                            AppLocalizations.of(context).translate('dashboard'),
                        fontColor: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                CheersClubText(
                  text: AppLocalizations.of(context).translate('Findfriends'),
                  fontColor: Colors.white,
                  fontSize: 18,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                CheersClubText(
                  text: AppLocalizations.of(context).translate('Placeanorder'),
                  fontColor: Colors.white,
                  fontSize: 18,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                CheersClubText(
                  text:
                      AppLocalizations.of(context).translate('TermsConditions'),
                  fontColor: Colors.white,
                  fontSize: 18,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                CheersClubText(
                  text: AppLocalizations.of(context)
                      .translate('Privacystatement'),
                  fontColor: Colors.white,
                  fontSize: 18,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                    duration: Duration(milliseconds: 1000),
                    type: PageTransitionType.rightToLeft,
                    child: settings(),
                    inheritTheme: true,
                    ctx: context),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  CheersClubText(
                    text: AppLocalizations.of(context).translate('Settings'),
                    fontColor: Colors.white,
                    fontSize: 18,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                CheersClubText(
                  text: AppLocalizations.of(context).translate('FAQ'),
                  fontColor: Colors.white,
                  fontSize: 18,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                ),
                CheersClubText(
                  text: AppLocalizations.of(context).translate('Contactus'),
                  fontColor: Colors.white,
                  fontSize: 18,
                )
              ],
            ),
          ),
          Expanded(child: SizedBox()),
          GestureDetector(
            onTap: () {
              UserManager.instance.logOutUser();
              Navigator.push(
                context,
                PageTransition(
                    duration: Duration(milliseconds: 1000),
                    type: PageTransitionType.rightToLeft,
                    child: LoginScreen(),
                    inheritTheme: true,
                    ctx: context),
              );
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 140,
                    height: 50,
                    color: HexColor("FEC753"),
                    margin: EdgeInsets.only(
                        left: 30, top: 0, bottom: 15, right: 30),
                    child: Center(
                      child: CheersClubText(
                        text: AppLocalizations.of(context).translate('Logout'),
                        fontColor: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
