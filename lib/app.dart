import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registration_bloc/pages/main_menu_page.dart';
import 'package:registration_bloc/pages/registration_page.dart';
import 'blocs/registration_bloc/registration_bloc.dart';

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

      return MaterialApp(
        home: BlocBuilder<RegistrationBloc, RegistrationState>(
          builder: (context, state) {
            if (state is RegistrationTestState) {
              return RegistartionCardPage();
            } else if (state is RegistrationTestState2) {
              return MainMenuPage();
            }

              return RegistartionCardPage();
          },
        ),
      );
    }


}