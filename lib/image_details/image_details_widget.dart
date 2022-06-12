import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/select_wallet_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageDetailsWidget extends StatefulWidget {
  const ImageDetailsWidget({
    Key key,
    this.imageDetails,
  }) : super(key: key);

  final DocumentReference imageDetails;

  @override
  _ImageDetailsWidgetState createState() => _ImageDetailsWidgetState();
}

class _ImageDetailsWidgetState extends State<ImageDetailsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'image_details'});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ImagesRecord>(
      stream: ImagesRecord.getDocument(widget.imageDetails),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final imageDetailsImagesRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                logFirebaseEvent('IMAGE_DETAILS_PAGE_Icon_swrtynm5_ON_TAP');
                logFirebaseEvent('Icon_Navigate-Back');
                context.pop();
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24,
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 0,
          ),
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        imageDetailsImagesRecord.imagePathUrl,
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              imageDetailsImagesRecord.title,
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
                        child: StreamBuilder<UsersRecord>(
                          stream: UsersRecord.getDocument(
                              imageDetailsImagesRecord.createdBy),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            final priceTextUsersRecord = snapshot.data;
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  priceTextUsersRecord.displayName,
                                  style: FlutterFlowTheme.of(context).bodyText2,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Text(
                                imageDetailsImagesRecord.description,
                                style: FlutterFlowTheme.of(context).bodyText2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if ((currentUserReference) !=
                        (imageDetailsImagesRecord.createdBy))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 30),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'IMAGE_DETAILS_MINT_THIS_IMAGE_BTN_ON_TAP');
                            logFirebaseEvent('Button_Bottom-Sheet');
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    child: SelectWalletWidget(),
                                  ),
                                );
                              },
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'jm710wn9' /* Mint This Image */,
                          ),
                          options: FFButtonOptions(
                            width: 270,
                            height: 50,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 8,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
