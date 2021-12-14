import 'package:fluro/fluro.dart';
import '../../presentation/presentation.dart';
import 'route_handlers.dart';

class Routes {
  static const initial = home;
  static const home = '/';
  static const skills = '/skills';
  static const skillDetail = '/skills/d/';

  static void configureRoutes(FluroRouter router) {
    router.define(home,
        handler: RouteHandlers.staticPageHandler(
          const HomeScreen(),
        ));
    router.define(skills,
        handler: RouteHandlers.staticPageHandler(
          const SkillsScreen(),
        ),
        transitionType: TransitionType.fadeIn);
    router.define('$skillDetail/:id', handler: Handler(
      handlerFunc: (context, params) {
        return SkillDetailScreen(id: params['id']![0]);
      },
    ), transitionType: TransitionType.fadeIn);
  }
}
