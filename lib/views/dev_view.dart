part of octane;

class DevView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple,
      child: Center(
        child: SizedBox(
          width: 500,
          child: ShowcaseTextCard(
            header: OctaneStore.projects.first.showcase!.headers.first,
            desc: OctaneStore.projects.first.showcase!.descriptions.first,
          ),
        ),
      ),
    );
  }
}
