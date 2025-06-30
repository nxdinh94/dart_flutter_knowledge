import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:practice_scrollable_widget/app/app.dart';
import 'package:practice_scrollable_widget/bootstrap.dart';
import 'package:practice_scrollable_widget/menu_food/presentation/food_presentation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  await configureDependencies();

  await bootstrap(() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<MenuFoodBloc>()..add(const MenuFoodGetAllEvent()),
        ),
        BlocProvider(
          create: (context) => getIt<SwitchLayoutBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<LocalFoodBloc>(),
        ),
      ],
      child: App(router: CustomNavigationHelper.router),
    );
  });
}
