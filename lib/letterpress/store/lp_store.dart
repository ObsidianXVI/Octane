library octane.letterpress.store;

import '../components/lp_components.dart';

class LetterpressRegistry {
  static final Map<String, LPPost> postRegistry = {
    'week1-turbocal-complex-calendar-widget-flutter': LPPost(
      postConfigs: LPPostConfigs(
        title: 'Complex Calendar Widget in Flutter (Turbocal)',
        postClass: LPPostClass.tgif_challenge,
        publicationDate: DateTime(2023, 3, 10),
        lastUpdate: DateTime(2023, 6, 2),
      ),
      components: <LPPostComponent>[
        LPText.header1(
          content: 'Overview',
        ),
        LPTableOfContents(),
        LPTextSpan(lpTextComponents: [
          LPText.plainBody(
            content:
                'While working on Lighthouse, I made a shocking yet somewhat thrilling discovery about Flutter. On one hand, I was amazed that no one had come up with a solution to this massive, gaping void in the Flutter widget pool. In the other hand was my stylus as I started scribbling away ideas to solve this need.',
          ),
          LPText.paragraphBreak(),
          LPText.plainBody(
            content:
                "The issue in question is Flutter's lack of a full-fledged calendar widget. Sure, there are calendar UIs already available on ",
          ),
          LPText.hyperlink(
            content: 'pub.dev',
            url: 'https://pub.dev',
          ),
          LPText.plainBody(
            content:
                ", but look at how similar it is in quality to its competitors' equivalents:",
          ),
        ]),
        const LPImage(
          url:
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
          width: 500,
          height: 500,
        ),
      ],
    ),
  };
}
