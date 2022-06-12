import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewAllWidget extends StatefulWidget {
  const ViewAllWidget({Key key}) : super(key: key);

  @override
  _ViewAllWidgetState createState() => _ViewAllWidgetState();
}

class _ViewAllWidgetState extends State<ViewAllWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ImagesRecord>>(
      stream: queryImagesRecord(
        queryBuilder: (imagesRecord) => imagesRecord
            .where('minted', isEqualTo: false)
            .orderBy('created_timestamp', descending: true),
      ),
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
        List<ImagesRecord> wrapImagesRecordList = snapshot.data;
        return Wrap(
          spacing: 10,
          runSpacing: 8,
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.none,
          children: List.generate(wrapImagesRecordList.length, (wrapIndex) {
            final wrapImagesRecord = wrapImagesRecordList[wrapIndex];
            return Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
              child: InkWell(
                onTap: () async {
                  logFirebaseEvent('VIEW_ALL_COMP_Container_g75qjek5_ON_TAP');
                  logFirebaseEvent('Container_Navigate-To');
                  context.pushNamed(
                    'image_details',
                    queryParams: {
                      'imageDetails': serializeParam(wrapImagesRecord.reference,
                          ParamType.DocumentReference),
                    }.withoutNulls,
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              wrapImagesRecord.imagePathUrl,
                              width: double.infinity,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                wrapImagesRecord.tag,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                          child: Text(
                            wrapImagesRecord.title,
                            style:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 0, 0),
                          child: StreamBuilder<UsersRecord>(
                            stream: UsersRecord.getDocument(
                                wrapImagesRecord.createdBy),
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
                              final textUsersRecord = snapshot.data;
                              return Text(
                                textUsersRecord.displayName,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
