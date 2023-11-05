part of octane.views;

class DevView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      child: Center(
        child: OctaneCard(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Lighthouse'),
                Text(
                    "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris."),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
