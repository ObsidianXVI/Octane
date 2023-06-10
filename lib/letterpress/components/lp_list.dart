part of octane.letterpress.ds;

enum LPListType {
  bullet,
  numbered,
  chaptered,
  ;
}

class LPList extends LPPostComponent {
  final LPListType lpListType;

  /// The key is the hierarchy level of the list item, and is > 0
  /// The value is the text to be indented
  final Map<int, LPText> indentLevels;

  const LPList({
    required this.lpListType,
    required this.indentLevels,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [];

    final LPText Function(MapEntry<int, LPText>) itemGeneratorFn;
    switch (lpListType) {
      case LPListType.bullet:
        itemGeneratorFn = (MapEntry<int, LPText> entry) {
          return LPText.plainBody(
            content: "${' ' * 2 * entry.key}•${entry.value.content}",
          );
        };
        break;
      case LPListType.numbered:
        int itemNo = 0;
        itemGeneratorFn = (MapEntry<int, LPText> entry) {
          itemNo += 1;
          return LPText.plainBody(
            content: "${' ' * 2 * entry.key}$itemNo${entry.value.content}",
          );
        };
        break;
      case LPListType.chaptered:
        int itemNo = 0;
        final int maxDepth = indentLevels.values
            .reduce(
              (value, element) =>
                  element.lpFont.headerLevel > value.lpFont.headerLevel
                      ? element
                      : value,
            )
            .lpFont
            .headerLevel;
        List<int> chapterCode = List<int>.generate(maxDepth, (index) => 0);
        itemGeneratorFn = (MapEntry<int, LPText> entry) {
          itemNo += 1;
          return LPText.plainBody(
            content: "•${' ' * 2 * entry.key}${entry.value.content}",
          );
        };
        break;
    }

    for (MapEntry<int, LPText> entry in indentLevels.entries) {
      children.addAll([itemGeneratorFn(entry), LPPost.componentDivider]);
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
