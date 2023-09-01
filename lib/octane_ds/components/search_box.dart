part of octane.ds;

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<StatefulWidget> createState() => SearchBoxState();
}

class SearchBoxState extends State<SearchBox> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ParentDependent(
        widthScaleFactor: 0.7,
        heightScaleFactor: 0.10,
        child: AnimatedContainer(
          width: double.infinity,
          height: double.infinity,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
          decoration: BoxDecoration(
            color: isActive ? OctaneTheme.obsidian800 : OctaneTheme.obsidian700,
            borderRadius: BorderRadius.circular(4),
            border:
                isActive ? Border.all(color: OctaneTheme.obsidian600) : null,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Focus(
                onFocusChange: (bool gainedFocus) =>
                    setState(() => isActive = gainedFocus),
                child: Row(
                  children: [
                    ParentDependent(
                      widthScaleFactor: 0.6,
                      heightScaleFactor: 1,
                      child: TextField(
                        maxLines: 1,
                        expands: false,
                        cursorColor: OctaneTheme.obsidian500,
                        onSubmitted: (String value) {},
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(
                          fontSize: 18,
                          color: OctaneTheme.obsidian500,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
