part of octane.letterpress.ds;

enum LPPostClass {
  tgif_challenge('TGIF Challenge');

  final String name;
  const LPPostClass(this.name);
}

class LPPostConfigs {
  final String title;
  final LPPostClass postClass;
  final DateTime publicationDate;
  final DateTime lastUpdate;

  const LPPostConfigs({
    required this.title,
    required this.postClass,
    required this.publicationDate,
    required this.lastUpdate,
  });
}

abstract class LPPostComponent extends StatelessWidget {
  const LPPostComponent({super.key});
}

class LPPost extends StatelessWidget {
  final LPPostConfigs postConfigs;
  final List<LPPostComponent> components;

  const LPPost({
    required this.postConfigs,
    required this.components,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = [];
    widgets.addAll([
      const SizedBox(height: 20),
      Center(
        child: Container(
          width: OCTUDimensionTools.getWidth(context),
          height: OCTUDimensionTools.getHeight(context),
          child: Center(
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: '${postConfigs.postClass.name}\n',
                  style: LPFont.postClassTitle().textStyle,
                ),
                TextSpan(
                  text: postConfigs.title,
                  style: LPFont.title().textStyle,
                ),
              ]),
            ),
          ),
        ),
      ),
      const LPDivider(),
    ]);
    for (LPPostComponent postComponent in components) {
      widgets.addAll([
        const SizedBox(height: 30),
        postComponent,
      ]);
    }
    widgets.addAll([
      const LPDivider(),
      Text(
        postConfigs.publicationDate.toIso8601String(),
        style: LPFont.bodyItalic().textStyle,
      ),
    ]);

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 120, right: 120),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: widgets,
            ),
          ),
        ),
      ),
    );
  }
}
