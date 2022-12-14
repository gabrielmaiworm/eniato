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
                                'Este aplicativo é mantido e operado por Grupo Eniato.\n\nNós coletamos e utilizamos alguns dados pessoais que pertencem aqueles que utilizam nosso aplicativo.\n\nAo fazê-lo, agimos na qualidade de controlador desses dados e estamos sujeitos às disposições da Lei\nFederal n. 13.709/2018 (Lei Geral de Proteção de Dados Pessoais - LGPD).\n\nNós cuidamos da proteção de seus dados pessoais e, por isso, disponibilizamos esta política de privacidade, que contém informações importantes sobre:\n- ﻿﻿Quem deve utilizar nosso aplicativo\n- ﻿﻿Quais dados coletamos e o que fazemos com eles;\n- ﻿﻿Seus direitos em relação aos seus dados pessoais; e\n- ﻿﻿Como entrar em contato conosco.\n\n1. Quem deve utilizar nosso aplicativo\nNosso aplicativo só deve ser utilizado por pessoas com mais de dezoito anos de idade. Sendo assim, crianças e adolescentes não devem utilizá-lo.\n\n2. Dados que coletamos e motivos da coleta\nNosso aplicativo coleta e utiliza alguns dados pessoais de nossos usuários, de acordo com o disposto nesta seção.\nA. Dados pessoais fornecidos expressamente pelo usuário\nNós coletamos os seguintes dados pessoais que nossos usuários nos fornecem expressamente ao\nutilizar nosso aplicativo:\n- ﻿﻿Nome;\n- ﻿﻿Idade;\n- ﻿﻿E-mail;\n- ﻿﻿Agência; e\n- ﻿﻿Conta.\n\nA coleta destes dados ocorre nos seguintes momentos:\nNo momento de cadastro da plataforma\nOs dados fornecidos por nossos usuários são coletados com as seguintes finalidades\nNecessário para a criação de identidade em nossa base de dados, para a utilização do aplicativo.\n\nB. Dados pessoais obtidos de outras formas\nNós coletamos os seguintes dados pessoais de nossos usuários:\nDados disponíveis no aplicativo da instituição bancária.\nA coleta destes dados ocorre nos seguintes momentos:\nDados são coletados no momento de cadastro da instituição bancária.\n\nEstes dados são coletados com as seguintes finalidades:\nNecessário as informações para controle de gasto e demais funcionalidades do aplicativo.\n\n3. Dados sensiveis\nNão serão coletados dados sensíveis de nossos usuários, assim entendidos aqueles definidos nos arts.\n11 e seguintes da Lei de Proteção de Dados Pessoais. Assim, não haverá coleta de dados sobre origem racial ou étnica, convicção religiosa, opinião política, filiação a sindicato ou a organização de caráter religioso, filosófico ou político, dado referente à saúde ou à vida sexual, dado genético ou biométrico, quando vinculado a uma pessoa natural.\n\n4. Coleta de dados não previstos expressamente\nEventualmente, outros tipos de dados não previstos expressamente nesta Política de Privacidade poderão ser coletados, desde que sejam fornecidos com o consentimento do usuário, ou, ainda, que a coleta seja permitida com fundamento em outra base legal prevista em lei.\nEm qualquer caso, a coleta de dados e as atividades de tratamento dela decorrentes serão informadas aos usuários do aplicativo.\n\nA. Compartilhamento de dados pessoais com terceiros\nNós não compartilhamos seus dados pessoais com terceiros. Apesar disso, é possível que o façamos para cumprir alguma determinação legal ou regulatória, ou, ainda, para cumprir alguma ordem expedida por autoridade pública.\n\nB. Por quanto tempo seus dados pessoais serão armazenados\nOs dados pessoais coletados pelo aplicativo são armazenados e utilizados por período de tempo que corresponda ao necessário para atingir as finalidades elencadas neste documento e que considere os direitos de seus titulares, os direitos do controlador do aplicativo e as disposições legais ou regulatórias aplicaveis.\n\nUma vez expirados os períodos de armazenamento dos dados pessoais, eles são removidos de nossas bases de dados ou anonimizados, salvo nos casos em que houver a possibilidade ou a necessidade de armazenamento em virtude de disposição legal ou regulatória.\n\n5. Bases legais para o tratamento de dados pessoais\nCada operação de tratamento de dados pessoais precisa ter um fundamento jurídico, ou seja, uma base legal, que nada mais é que uma justificativa que a autorize, prevista na Lei Geral de Proteção de Dados Pessoais.\nTodas as Nossas atividades de tratamento de dados pessoais possuem uma base legal que as fundamenta, dentre as permitidas pela legislação. Mais informações sobre as bases legais que utilizamos para operações de tratamento de dados pessoais específicas podem ser obtidas a partir de nossos canais de contato, informados ao final desta Política.\n\n6. Medidas de segurança no tratamento de dados pessoais\nEmpregamos medidas técnicas e organizativas aptas a proteger os dados pessoais de acessos não autorizados e de situações de destruição, perda, extravio ou alteração desses dados.\nAs medidas que utilizamos levam em consideração a natureza dos dados, o contexto e a finalidade do tratamento, os riscos que uma eventual violação geraria para os direitos e liberdades do usuário, e os padrões atualmente empregados no mercado por empresas semelhantes a nossa.\n\nEntre as medidas de segurança adotadas por nós, destacamos as seguintes:\nOs dados de nossos usuários são armazenados em ambiente seguro;\n- ﻿﻿Limitamos o acesso aos dados de nossos usuários, de modo que terceiros não autorizados não possam acessá-los;\n- ﻿﻿Mantemos registros de todos aqueles que tem, de alguma forma, contato com nossos dados.\nAinda que adote tudo o que está ao seu alcance para evitar incidentes de segurança, é possível que ocorra algum problema motivado exclusivamente por um terceiro - como em caso de ataques de hackers ou crackers ou, ainda, em caso de culpa exclusiva do usuário, que ocorre, por exemplo, quando ele mesmo transfere seus dados a terceiro. Assim, embora sejamos, em geral, responsáveis pelos dados pessoais que tratamos, nos eximimos de responsabilidade caso ocorra uma situação excepcional como essas, sobre as quais não temos nenhum tipo de controle.\nDe qualquer forma, caso ocorra qualquer tipo de incidente de segurança que possa gerar risco ou dano relevante para qualquer de nossos usuários, comunicaremos os afetados e a Autoridade Nacional de Proteção de Dados acerca do ocorrido, em conformidade com o disposto na Lei Geral de Proteção de\nDados.\n\n7. Alterações nesta política\nA presente versão desta Política de Privacidade foi atualizada pela última vez em:\nReservamo-nos o direito de modificar, a qualquer momento, as presentes normas, especialmente para adaptá-las às eventuais alterações feitas em nosso aplicativo, seja pela disponibilização de novas funcionalidades, seja pela supressão ou modificação daquelas já existentes.\nSempre que houver uma modificação, nossos usuários serão notificados acerca da mudança.\n\n8. Como entrar em contato conosco\nPara esclarecer quaisquer dúvidas sobre esta Política de Privacidade ou sobre os dados pessoais que tratamos, entre em contato com nosso Encarregado de Proteção de Dados Pessoais, por algum dos canais mencionados abaixo:\nE-mail:\nEndereço postal: pablomarcelo.trajano@gmail.com',
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
