import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConsumoWidget extends StatefulWidget {
  const ConsumoWidget({Key? key}) : super(key: key);

  @override
  _ConsumoWidgetState createState() => _ConsumoWidgetState();
}

class _ConsumoWidgetState extends State<ConsumoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).background,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).appbar,
        iconTheme:
            IconThemeData(color: FlutterFlowTheme.of(context).textoscadastro),
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
          'Consumo',
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                        child: Text(
                          'De acordo com os dados do seu extrato de 30 dias atrás esses são seus gastos atuais:\n',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).black600,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                          color: Color(0xFFDBE2E7),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Stack(
                          children: [
                            if (valueOrDefault(
                                    currentUserDocument?.tipoConsumo, '') ==
                                'Conservador')
                              AuthUserStreamWidget(
                                child: Image.asset(
                                  'assets/images/atualConservador-removebg-preview.png',
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            if (valueOrDefault(
                                    currentUserDocument?.tipoConsumo, '') ==
                                'Moderado')
                              AuthUserStreamWidget(
                                child: Image.asset(
                                  'assets/images/moderadoAtual-removebg-preview.png',
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            if (valueOrDefault(
                                    currentUserDocument?.tipoConsumo, '') ==
                                'Arrojado')
                              Align(
                                alignment: AlignmentDirectional(9.96, 0),
                                child: AuthUserStreamWidget(
                                  child: Image.asset(
                                    'assets/images/arrojadoAtual-removebg-preview.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text(
                          'De acordo com seu perfil de consumo nós recomendamos os seguintes gastos:',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).black600,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 100),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: BoxDecoration(
                            color: Color(0xFFDBE2E7),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              if (valueOrDefault(
                                      currentUserDocument?.tipoConsumo, '') ==
                                  'Conservador')
                                AuthUserStreamWidget(
                                  child: Image.asset(
                                    'assets/images/conservadorRecomendado-removebg-preview.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              if (valueOrDefault(
                                      currentUserDocument?.tipoConsumo, '') ==
                                  'Moderado')
                                AuthUserStreamWidget(
                                  child: Image.asset(
                                    'assets/images/moderadoRecomendado-removebg-preview.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              if (valueOrDefault(
                                      currentUserDocument?.tipoConsumo, '') ==
                                  'Arrojado')
                                Align(
                                  alignment: AlignmentDirectional(9.96, 0),
                                  child: AuthUserStreamWidget(
                                    child: Image.asset(
                                      'assets/images/arrojadoRecomendado-removebg-preview.png',
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                            ],
                          ),
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
    );
  }
}
