part of octane.ds;

class SearchBox extends StatefulWidget {
  final void Function(String) onChanged;
  const SearchBox({required this.onChanged, super.key});

  @override
  State<StatefulWidget> createState() => SearchBoxState();
}

class SearchBoxState extends State<SearchBox> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ParentDependent(
        heightScaleFactor: 0.10,
        child: AnimatedContainer(
          width: double.infinity,
          height: double.infinity,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
          decoration: BoxDecoration(
            color: isActive ? OctaneTheme.obsidianD150 : OctaneTheme.obsidianC100,
            borderRadius: BorderRadius.circular(4),
            border:
                isActive ? Border.all(color: OctaneTheme.obsidianC000) : null,
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
                        cursorColor: OctaneTheme.obsidianB100,
                        onChanged: widget.onChanged,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(
                          fontSize: 18,
                          color: OctaneTheme.obsidianB100,
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
