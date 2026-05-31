part of octane.ds;

enum ListType {
  bullet,
  numbered,
  chaptered,
  ;
}

abstract class ListSpan extends StatelessWidget {
  final ListType listType;

  const ListSpan({
    required this.listType,
    super.key,
  });
}

class SingleLevelListSpan extends ListSpan {
  final List<Widget> listItems;

  const SingleLevelListSpan({
    required this.listItems,
    required super.listType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> itemWidgets = [];
    if (listType == ListType.bullet) {
      itemWidgets.addAll([
        for (final item in listItems)
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OctaneText.plainBody(content: '•'),
              const SizedBox(width: 10),
              item
            ],
          ),
      ]);
    } else if (listType == ListType.numbered) {
      for (int i = 1; i < listItems.length + 1; i++) {
        itemWidgets.add(
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OctaneText.plainBody(content: "$i."),
              const SizedBox(width: 10),
              listItems[i - 1],
            ],
          ),
        );
      }
    }
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: itemWidgets,
        ),
      ),
    );
  }
}
