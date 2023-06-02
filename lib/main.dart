import 'package:flutter/material.dart';
import 'package:octane/letterpress/views/lp_views.dart';
import 'package:octane/octane_ds/octane_ds.dart';
import './views/views.dart';

void main() {
  runApp(Octane(
    routables: [
      LPRouter.home(),
      LPRouter.tgif('week1-turbocal-complex-calendar-widget-flutter'),
    ],
  ));
}

class Octane extends StatelessWidget {
  final List<Routable> routables;
  final Map<String, Widget Function(BuildContext)> routes;
  Octane({required this.routables, super.key})
      : routes = <String, Widget Function(BuildContext)>{
          for (Routable r in routables) r.toSlug(): r.buildFn
        };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Material(
        child: OCTVLaunchView(),
      ),
      routes: routes,
      /* {
        '/letterpress': (context) => const Material(
              child: OCTVLetterpressHomeView(),
            ),
        '/letterpress/home': (context) => ,
        /* '/letterpress/tgif-challenge/week1-turbocal': (context) => Material(
              child: OCTVLetterpressPostView(
                postComponents:
                    lp_store.LetterpressTGIFWeek1TurbocalPost.postComponents,
              ),
            ), */
        '/letterpress/tgif/': (context) => Material(
              child: OCTVLetterpressPostView(
                lpPost: LPPost(
                  postConfigs: LPPostConfigs(
                      title: 'Complex Calendar Widget In Flutter',
                      postClass: LPPostClass.tgif_challenge,
                      publicationDate: DateTime.now(),
                      lastUpdate: DateTime.now().add(const Duration(days: 2))),
                  components: [],
                ),
              ),
            )
      } */
    );
  }
}
