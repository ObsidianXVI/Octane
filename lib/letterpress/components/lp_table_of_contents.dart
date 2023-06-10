part of octane.letterpress.ds;

class LPTableOfContents extends LPPostComponent {
  final List<LPText> postComponents;
  const LPTableOfContents({
    required this.postComponents,
  });

  @override
  Widget build(BuildContext context) {
    final Map<int, LPText> indentLevels = Map.fromIterables(
      postComponents.map((LPText lpText) => lpText.lpFont.headerLevel),
      postComponents.map((LPText lpText) => lpText),
    );

    return LPGroup.vertical(
      postComponents: [
        LPText.header1(content: 'Table of Contents'),
        LPList(
          lpListType: LPListType.chaptered,
          indentLevels: indentLevels,
        ),
      ],
    );
  }
}
