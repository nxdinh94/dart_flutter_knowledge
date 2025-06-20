import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_scrollable_widget/app/app.dart';
import 'package:practice_scrollable_widget/app/router/routes.dart';
import 'package:practice_scrollable_widget/bootstrap.dart';
import 'package:practice_scrollable_widget/menu_food/presentation/food_presentation.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  CustomNavigationHelper('/');
  // await setupInjection();
  await configureDependencies();
  await bootstrap((){
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<MenuFoodBloc>()..add(const MenuFoodGetAllEvent()),
        ),
        BlocProvider(
          create: (context) => getIt<SwitchLayoutBloc>(),
        ),
      ],
      child: App(router: CustomNavigationHelper.router,),
    );
  });
}
