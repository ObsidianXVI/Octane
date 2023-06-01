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

  LPPostConfigs({
    required this.title,
    required this.postClass,
    required this.publicationDate,
    required this.lastUpdate,
  });
}

abstract class LPPostComponent extends StatelessWidget {}

class LPPost extends StatelessWidget {
  final LPPostConfigs postConfigs;
  final List<LPPostComponent> components;

  LPPost({
    required this.postConfigs,
    required this.components,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = [];
    widgets.addAll([
      Center(
        child: Container(
          width: OCTUDimensionTools.getWidth(context),
          height: OCTUDimensionTools.getHeight(context),
          child: Center(
            child: Text(
              '[${postConfigs.postClass.name}] ${postConfigs.title}',
              style: LPFont.title().textStyle,
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

    return SingleChildScrollView(
      child: Column(
        children: widgets,
      ),
    );
  }
}

class LPDivider extends StatelessWidget {
  const LPDivider({super.key});
  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 30,
      thickness: 0.5,
      color: OCTTColor.grey200,
    );
  }
}
