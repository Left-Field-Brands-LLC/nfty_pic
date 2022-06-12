import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectWalletWidget extends StatefulWidget {
  const SelectWalletWidget({Key key}) : super(key: key);

  @override
  _SelectWalletWidgetState createState() => _SelectWalletWidgetState();
}

class _SelectWalletWidgetState extends State<SelectWalletWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'vvvme32t' /* Select Wallet to Mint With */,
                ),
                style: FlutterFlowTheme.of(context).title3,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 4, 0, 8),
              child: Text(
                FFLocalizations.of(context).getText(
                  '0vbn1js5' /* from the list below */,
                ),
                style: FlutterFlowTheme.of(context).bodyText2,
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'data:image/png;base64,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',
                            width: 50,
                            height: 50,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'y77dn71t' /* Avalanche */,
                              ),
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://s2.coinmarketcap.com/static/img/coins/200x200/4030.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'soor7yjr' /* Algorand */,
                              ),
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://upload.wikimedia.org/wikipedia/en/b/b9/Solana_logo.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '6adnc60i' /* Solono */,
                              ),
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
