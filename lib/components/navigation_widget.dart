import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({Key key}) : super(key: key);

  @override
  _NavigationWidgetState createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 100,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () async {
                    context.pushNamed('home');
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF090F13),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x3314181B),
                          offset: Offset(0, 2),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0, 0),
                    child: Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    context.pushNamed('gallery');
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF090F13),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x3314181B),
                          offset: Offset(0, 2),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0, 0),
                    child: Icon(
                      Icons.photo_library_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    context.pushNamed('add_image');
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x3314181B),
                          offset: Offset(0, 2),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0, 0),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF090F13),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x3314181B),
                        offset: Offset(0, 2),
                      )
                    ],
                    shape: BoxShape.circle,
                  ),
                  alignment: AlignmentDirectional(0, 0),
                  child: Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    context.pushNamed('profile');
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF090F13),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x3314181B),
                          offset: Offset(0, 2),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0, 0),
                    child: Icon(
                      Icons.person_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
