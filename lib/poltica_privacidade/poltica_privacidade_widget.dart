import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PolticaPrivacidadeWidget extends StatefulWidget {
  const PolticaPrivacidadeWidget({Key? key}) : super(key: key);

  @override
  _PolticaPrivacidadeWidgetState createState() =>
      _PolticaPrivacidadeWidgetState();
}

class _PolticaPrivacidadeWidgetState extends State<PolticaPrivacidadeWidget> {
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
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 32,
          ),
        ),
        title: Text(
          'Politica de Privacidade',
          style: FlutterFlowTheme.of(context).title3,
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
          child: StreamBuilder<UsersRecord>(
            stream: UsersRecord.getDocument(currentUserReference!),
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
              final columnUsersRecord = snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                              child: Text(
                                'Como utilizamos seus dados',
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color:
                                          FlutterFlowTheme.of(context).black600,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 44),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Text(
                                'Este aplicativo ?? mantido e operado por Grupo Eniato.\n\nN??s coletamos e utilizamos alguns dados pessoais que pertencem aqueles que utilizam nosso aplicativo.\n\nAo faz??-lo, agimos na qualidade de controlador desses dados e estamos sujeitos ??s disposi????es da Lei\nFederal n. 13.709/2018 (Lei Geral de Prote????o de Dados Pessoais - LGPD).\n\nN??s cuidamos da prote????o de seus dados pessoais e, por isso, disponibilizamos esta pol??tica de privacidade, que cont??m informa????es importantes sobre:\n- ??????Quem deve utilizar nosso aplicativo\n- ??????Quais dados coletamos e o que fazemos com eles;\n- ??????Seus direitos em rela????o aos seus dados pessoais; e\n- ??????Como entrar em contato conosco.\n\n1. Quem deve utilizar nosso aplicativo\nNosso aplicativo s?? deve ser utilizado por pessoas com mais de dezoito anos de idade. Sendo assim, crian??as e adolescentes n??o devem utiliz??-lo.\n\n2. Dados que coletamos e motivos da coleta\nNosso aplicativo coleta e utiliza alguns dados pessoais de nossos usu??rios, de acordo com o disposto nesta se????o.\nA. Dados pessoais fornecidos expressamente pelo usu??rio\nN??s coletamos os seguintes dados pessoais que nossos usu??rios nos fornecem expressamente ao\nutilizar nosso aplicativo:\n- ??????Nome;\n- ??????Idade;\n- ??????E-mail;\n- ??????Ag??ncia; e\n- ??????Conta.\n\nA coleta destes dados ocorre nos seguintes momentos:\nNo momento de cadastro da plataforma\nOs dados fornecidos por nossos usu??rios s??o coletados com as seguintes finalidades\nNecess??rio para a cria????o de identidade em nossa base de dados, para a utiliza????o do aplicativo.\n\nB. Dados pessoais obtidos de outras formas\nN??s coletamos os seguintes dados pessoais de nossos usu??rios:\nDados dispon??veis no aplicativo da institui????o banc??ria.\nA coleta destes dados ocorre nos seguintes momentos:\nDados s??o coletados no momento de cadastro da institui????o banc??ria.\n\nEstes dados s??o coletados com as seguintes finalidades:\nNecess??rio as informa????es para controle de gasto e demais funcionalidades do aplicativo.\n\n3. Dados sensiveis\nN??o ser??o coletados dados sens??veis de nossos usu??rios, assim entendidos aqueles definidos nos arts.\n11 e seguintes da Lei de Prote????o de Dados Pessoais. Assim, n??o haver?? coleta de dados sobre origem racial ou ??tnica, convic????o religiosa, opini??o pol??tica, filia????o a sindicato ou a organiza????o de car??ter religioso, filos??fico ou pol??tico, dado referente ?? sa??de ou ?? vida sexual, dado gen??tico ou biom??trico, quando vinculado a uma pessoa natural.\n\n4. Coleta de dados n??o previstos expressamente\nEventualmente, outros tipos de dados n??o previstos expressamente nesta Pol??tica de Privacidade poder??o ser coletados, desde que sejam fornecidos com o consentimento do usu??rio, ou, ainda, que a coleta seja permitida com fundamento em outra base legal prevista em lei.\nEm qualquer caso, a coleta de dados e as atividades de tratamento dela decorrentes ser??o informadas aos usu??rios do aplicativo.\n\nA. Compartilhamento de dados pessoais com terceiros\nN??s n??o compartilhamos seus dados pessoais com terceiros. Apesar disso, ?? poss??vel que o fa??amos para cumprir alguma determina????o legal ou regulat??ria, ou, ainda, para cumprir alguma ordem expedida por autoridade p??blica.\n\nB. Por quanto tempo seus dados pessoais ser??o armazenados\nOs dados pessoais coletados pelo aplicativo s??o armazenados e utilizados por per??odo de tempo que corresponda ao necess??rio para atingir as finalidades elencadas neste documento e que considere os direitos de seus titulares, os direitos do controlador do aplicativo e as disposi????es legais ou regulat??rias aplicaveis.\n\nUma vez expirados os per??odos de armazenamento dos dados pessoais, eles s??o removidos de nossas bases de dados ou anonimizados, salvo nos casos em que houver a possibilidade ou a necessidade de armazenamento em virtude de disposi????o legal ou regulat??ria.\n\n5. Bases legais para o tratamento de dados pessoais\nCada opera????o de tratamento de dados pessoais precisa ter um fundamento jur??dico, ou seja, uma base legal, que nada mais ?? que uma justificativa que a autorize, prevista na Lei Geral de Prote????o de Dados Pessoais.\nTodas as Nossas atividades de tratamento de dados pessoais possuem uma base legal que as fundamenta, dentre as permitidas pela legisla????o. Mais informa????es sobre as bases legais que utilizamos para opera????es de tratamento de dados pessoais espec??ficas podem ser obtidas a partir de nossos canais de contato, informados ao final desta Pol??tica.\n\n6. Medidas de seguran??a no tratamento de dados pessoais\nEmpregamos medidas t??cnicas e organizativas aptas a proteger os dados pessoais de acessos n??o autorizados e de situa????es de destrui????o, perda, extravio ou altera????o desses dados.\nAs medidas que utilizamos levam em considera????o a natureza dos dados, o contexto e a finalidade do tratamento, os riscos que uma eventual viola????o geraria para os direitos e liberdades do usu??rio, e os padr??es atualmente empregados no mercado por empresas semelhantes a nossa.\n\nEntre as medidas de seguran??a adotadas por n??s, destacamos as seguintes:\nOs dados de nossos usu??rios s??o armazenados em ambiente seguro;\n- ??????Limitamos o acesso aos dados de nossos usu??rios, de modo que terceiros n??o autorizados n??o possam acess??-los;\n- ??????Mantemos registros de todos aqueles que tem, de alguma forma, contato com nossos dados.\nAinda que adote tudo o que est?? ao seu alcance para evitar incidentes de seguran??a, ?? poss??vel que ocorra algum problema motivado exclusivamente por um terceiro - como em caso de ataques de hackers ou crackers ou, ainda, em caso de culpa exclusiva do usu??rio, que ocorre, por exemplo, quando ele mesmo transfere seus dados a terceiro. Assim, embora sejamos, em geral, respons??veis pelos dados pessoais que tratamos, nos eximimos de responsabilidade caso ocorra uma situa????o excepcional como essas, sobre as quais n??o temos nenhum tipo de controle.\nDe qualquer forma, caso ocorra qualquer tipo de incidente de seguran??a que possa gerar risco ou dano relevante para qualquer de nossos usu??rios, comunicaremos os afetados e a Autoridade Nacional de Prote????o de Dados acerca do ocorrido, em conformidade com o disposto na Lei Geral de Prote????o de\nDados.\n\n7. Altera????es nesta pol??tica\nA presente vers??o desta Pol??tica de Privacidade foi atualizada pela ??ltima vez em:\nReservamo-nos o direito de modificar, a qualquer momento, as presentes normas, especialmente para adapt??-las ??s eventuais altera????es feitas em nosso aplicativo, seja pela disponibiliza????o de novas funcionalidades, seja pela supress??o ou modifica????o daquelas j?? existentes.\nSempre que houver uma modifica????o, nossos usu??rios ser??o notificados acerca da mudan??a.\n\n8. Como entrar em contato conosco\nPara esclarecer quaisquer d??vidas sobre esta Pol??tica de Privacidade ou sobre os dados pessoais que tratamos, entre em contato com nosso Encarregado de Prote????o de Dados Pessoais, por algum dos canais mencionados abaixo:\nE-mail:\nEndere??o postal: pablomarcelo.trajano@gmail.com',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color:
                                          FlutterFlowTheme.of(context).black600,
                                      fontWeight: FontWeight.normal,
                                    ),
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
          ),
        ),
      ),
    );
  }
}
