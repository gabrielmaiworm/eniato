import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MinhasContasWidget extends StatefulWidget {
  const MinhasContasWidget({Key? key}) : super(key: key);

  @override
  _MinhasContasWidgetState createState() => _MinhasContasWidgetState();
}

class _MinhasContasWidgetState extends State<MinhasContasWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).background,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).appbar,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Minhas Contas',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: StreamBuilder<List<BancoUserRecord>>(
        stream: queryBancoUserRecord(
          queryBuilder: (bancoUserRecord) =>
              bancoUserRecord.where('userRef', isEqualTo: currentUserReference),
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 40,
                height: 40,
                child: SpinKitPumpingHeart(
                  color: FlutterFlowTheme.of(context).primaryColor,
                  size: 40,
                ),
              ),
            );
          }
          List<BancoUserRecord> listViewBancoUserRecordList = snapshot.data!;
          return ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            itemCount: listViewBancoUserRecordList.length,
            itemBuilder: (context, listViewIndex) {
              final listViewBancoUserRecord =
                  listViewBancoUserRecordList[listViewIndex];
              return Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.96,
                  height: 120,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).formulario,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x3A000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).background,
                      width: 0,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                'https://iconarchive.com/download/i85547/graphicloads/100-flat/bank.ico',
                                width: 74,
                                height: 74,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Agência: ${valueOrDefault<String>(
                                  listViewBancoUserRecord.agencia,
                                  '0000',
                                )}',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .tertiary400,
                                      fontSize: 17,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Conta: ',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .black600,
                                            fontSize: 17,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          listViewBancoUserRecord.conta,
                                          '000',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .black600,
                                              fontSize: 17,
                                            ),
                                      ),
                                    ),
                                  ],
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
            },
          );
        },
      ),
    );
  }
}
