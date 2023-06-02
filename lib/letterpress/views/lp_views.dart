library octane.letterpress.views;

import 'package:flutter/material.dart';
import '../../octane_ds/octane_ds.dart';
import '../components/lp_components.dart';
import '../store/lp_store.dart';

class LPRouter extends Routable {
  static const _base = '/letterpress';
  LPRouter.home()
      : super(
            base: _base,
            route: '',
            buildFn: (BuildContext context) {
              return const Material(
                child: LetterpressHomeView(),
              );
            });
  LPRouter.tgif(String postId)
      : super(
            base: _base,
            route: '/tgif/$postId',
            buildFn: (BuildContext context) {
              return Material(
                child: LetterpressPostView(postId: postId),
              );
            });
}

class LetterpressHomeView extends StatelessWidget {
  const LetterpressHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: OCTUDimensionTools.getWidth(context),
        height: OCTUDimensionTools.getHeight(context),
        color: OCTTColor.grey800,
        child: Center(
          child: SingleChildScrollView(
            child: SelectionArea(
              child: Column(
                children: [
                  OCTCFrame(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Center(
                          child: OCTCComposite(children: [
                            OCTFHeroTitle(
                              content: "Letterpress",
                            ),
                          ]),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: OCTCComposite(
                            children: [
                              OCTFBodyPlain(content: "Welcome to my blog!"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  OCTCContinuousFrame(
                    frameTitle: "Recent Posts",
                    child: Center(
                      child: Column(
                        children: [
                          OCTCComposite(
                            children: [
                              OCTFBodyHyperlink(
                                content: "Turbocal",
                                url: Uri.https('github.com'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LetterpressPostView extends StatelessWidget {
  final String postId;
  final LPPost post;

  LetterpressPostView({
    required this.postId,
    super.key,
  }) : post = LetterpressRegistry.postRegistry[postId]!;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: OCTTColor.grey800,
        child: post,
      ),
    );
  }
}
