import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';
import '../blocs/registration_bloc/registration_bloc.dart';

class RegistartionCardPage extends StatefulWidget {
  @override
  Registration createState() => Registration();
}

class Registration extends State<RegistartionCardPage> {
  BuildContext blocContext;

  @override
  Widget build(BuildContext context) {

    child:
    SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(),
            BlocProvider(
              create: (context) => RegistrationBloc(RegistrationTestState())
                ..add(RegistrationTest()),
              child: BlocListener<RegistrationBloc, RegistrationState>(
                listener: (context, state) {
                  if (state is RegistrationTestState) {
                    return Container(width: 100, height: 100, color: Colors.blue);
                  }
                  return Container(width: 100, height: 100, color: Colors.blue);
                },
                child: BlocBuilder<RegistrationBloc, RegistrationState>(
                  builder: (context, state) {
                    blocContext = context;
                    if (state is RegistrationTestState) {
                      return Container(width: 100, height: 100, color: Colors.blue);
                    } else
                      return Container(width: 100, height: 100, color: Colors.blue);
                  },
                ),
              ),
            ),
          ]
        ),
        floatingActionButton: FloatingActionButton(),
      ),
    );
  }
}

//child: Stack(
//              children: [
//                Background(),
//                Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  children: <Widget>[
//                    Padding(
//                      padding: EdgeInsets.symmetric(vertical: 100.0),
//                      child: Center(
//                        child: BlocBuilder<RegistrationBloc, RegistrationState>(
//                          builder: (context, state) {
//                            return Column(
//                              children: [
//                                TextField(
//                                  key: const Key(
//                                      'loginForm_usernameInput_textField'),
////          onChanged: (username) =>
////              context.bloc<LoginBloc>().add(LoginUsernameChanged(username)),
//                                  decoration: InputDecoration(
//                                    labelText: 'username',
//                                  ),
//                                ),
//                                TextField(
//                                  key: const Key(
//                                      'loginForm_passwordInput_textField'),
////          onChanged: (password) =>
////              context.bloc<LoginBloc>().add(LoginPasswordChanged(password)),
//                                  obscureText: true,
//                                  decoration: InputDecoration(
//                                    labelText: 'password',
//                                  ),
//                                ),
//                                RaisedButton(
//                                  onPressed: () {
//                                    context.bloc<RegistrationBloc>().add(RegistrationTest());
//                                  },
//                                ),
//                              ],
//                            );
//                          },
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//              ],
//            ),
class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WaveWidget(
      config: CustomConfig(
        gradients: [
          [
            Color.fromRGBO(72, 74, 126, 1),
            Color.fromRGBO(125, 170, 206, 1),
            Color.fromRGBO(184, 189, 245, 0.7)
          ],
          [
            Color.fromRGBO(72, 74, 126, 1),
            Color.fromRGBO(125, 170, 206, 1),
            Color.fromRGBO(172, 182, 219, 0.7)
          ],
          [
            Color.fromRGBO(72, 73, 126, 1),
            Color.fromRGBO(125, 170, 206, 1),
            Color.fromRGBO(190, 238, 246, 0.7)
          ],
        ],
        durations: [19440, 10800, 6000],
        heightPercentages: [0.03, 0.01, 0.02],
        gradientBegin: Alignment.bottomCenter,
        gradientEnd: Alignment.topCenter,
      ),
      size: Size(double.infinity, double.infinity),
      waveAmplitude: 25,
      backgroundColor: Colors.blue[50],
    );
  }
}
