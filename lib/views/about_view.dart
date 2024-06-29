part of octane;

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<StatefulWidget> createState() => AboutViewState();
}

class AboutViewState extends State<AboutView> with ViewportScaling {
  final PageController pageController = PageController();

  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 1),
        () => pageController.animateToPage(
              1,
              duration: const Duration(milliseconds: 1200),
              curve: Curves.easeInOutQuart,
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      child: ViewportSnappingScrollView(
        controller: pageController,
        children: [
          ViewportSize(
            child: Center(
              child: Text(
                'ABOUT',
                style: pageTitle.apply(
                  const TextStyle(color: OctaneTheme.obsidianA150),
                ),
              ),
            ),
          ),
          Multiplatform.currentPlatform == const DesktopPlatform()
              ? ViewportSize(
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        left: 0,
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.74,
                        child: Image.asset(
                          'images/me.png',
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 50,
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          width: responsive(820),
                          decoration: BoxDecoration(
                            gradient: RadialGradient(
                              center: Alignment.topRight,
                              radius: 0.8,
                              colors: [
                                OctaneTheme.obsidianD050,
                                OctaneTheme.obsidianD050.withOpacity(0.8),
                                OctaneTheme.obsidianD050.withOpacity(0.6),
                                Colors.transparent,
                              ],
                              stops: const [0, 0.2, 0.4, 1],
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'About Me',
                                textAlign: TextAlign.right,
                                style: heading1.apply(
                                  const TextStyle(
                                    color: OctaneTheme.obsidianA150,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                """I'm Siddharth Chitikela, a passionate developer who is currently studying in IBDP year two. I have a burning passion to learn as much as I can about the world of information systems, and to learn by doing. Whether I have to learn a new language like Dart, a new tool like Docker, or a new concept like web security, I am more than ready because I undertake challenges with genuine curiosity and interest — not fear or intimidation. As such, I am able to pick up the necessary skills and domain knowledge required to accomplish goals even in uncharted territory. Furthermore, having had to juggle academics, extra-curricular activites and personal commitments together  with my coding projects, I have developed a stringent work ethic that enables me to give every task my complete attention and effort.

Apart from coding with coffee and some good hip-hop, I also play badminton, football, and the electric guitar. Sometimes I also try to draw — photorealistic cars or whimsical concept art — but I'm not very good at it, so I usually stick to logo designing. But I would always pick hanging out with my bestest friends over anything, in a heartbeat.""",
                                textAlign: TextAlign.right,
                                style: body1.apply(
                                  const TextStyle(
                                      color: OctaneTheme.obsidianB000),
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 34,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : ViewportSize(
                  child: Stack(
                    children: [
                      Positioned(
                        top: Multiplatform.currentPlatform ==
                                const DesktopPlatform()
                            ? 50
                            : null,
                        left: 0,
                        child: const ExpandableCard(
                          desktopAllowedWidth: 0,
                          header: 'About Me',
                          content:
                              """I'm Siddharth Chitikela, a passionate developer who is currently studying in IBDP year two. I have a burning passion to learn as much as I can about the world of information systems, and to learn by doing. Whether I have to learn a new language like Dart, a new tool like Docker, or a new concept like web security, I am more than ready because I undertake challenges with genuine curiosity and interest — not fear or intimidation. As such, I am able to pick up the necessary skills and domain knowledge required to accomplish goals even in uncharted territory. Furthermore, having had to juggle academics, extra-curricular activites and personal commitments together  with my coding projects, I have developed a stringent work ethic that enables me to give every task my complete attention and effort.

Apart from coding with coffee and some good hip-hop, I also play badminton, football, and the electric guitar. Sometimes I also try to draw — photorealistic cars or whimsical concept art — but I'm not very good at it, so I usually stick to logo designing. But I would always pick hanging out with my bestest friends over anything, in a heartbeat.""",
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: Image.asset(
                          'images/me.png',
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ],
                  ),
                ),
          ViewportSize(
            child: Stack(
              children: [
                Multiplatform.currentPlatform == const DesktopPlatform()
                    ? Positioned(
                        top: -70,
                        left: 0,
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.74,
                        child: Image.asset(
                          'images/me.png',
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomCenter,
                        ),
                      )
                    : Positioned(
                        top: -120,
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: Image.asset(
                          'images/me.png',
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                Positioned(
                  bottom:
                      Multiplatform.currentPlatform == const DesktopPlatform()
                          ? 50
                          : 20,
                  right:
                      Multiplatform.currentPlatform == const DesktopPlatform()
                          ? 50
                          : null,
                  child: ExpandableCard(
                    desktopAllowedWidth:
                        MediaQuery.of(context).size.width * 0.6,
                    leftAlign: false,
                    header: 'My Journey',
                    content:
                        """My foray into the programming world started when I was fourteen, and I picked up a little Python to build CLI scripts and automations. From there, once I realised how much control over data and processes programming languages can give, I could not stop exploring. I experimented with iOS shortcuts as well, building quite complex tools for personal use, and then I moved on to Scriptable for iOS — an app that lets you program custom iOS widgets using JavaScript. Once I discovered NodeJS, my interest really took off, turning from a curiosity to a strong passion. With NodeJS, I built a few Discord bots and had a bit of fun, but by then my confidence had increased, so wanted to develop my own application. Without knowing anything about app development, databases, networking or security, I took a leap of faith. I remember that at fifteen, all I had was a decent grasp of NodeJS and a rough idea of the app I wanted to build. However, I taught myself everything needed to build a full-fledged app, from Flutter and Dart (remember, learning a statically-typed language for the first time can be quite mind-boggling) to Firestore, JSON web tokens, and the MVC app architecture. Soon, I plan to research into the field of autonomic computing, since it has always been a dream of mine to build a self-managed system.""",
                  ),
                ),
              ],
            ),
          ),
          ViewportSize(
            child: Stack(
              children: [
                Positioned(
                  top: Multiplatform.currentPlatform == const DesktopPlatform()
                      ? 50
                      : null,
                  left: Multiplatform.currentPlatform == const DesktopPlatform()
                      ? 50
                      : null,
                  child: ExpandableCard(
                    desktopAllowedWidth:
                        MediaQuery.of(context).size.width * 0.6,
                    header: 'My Portfolio',
                    content:
                        """My portfolio consists of many coding projects of different sizes and topics, but most of them are web apps because I enjoy designing the user interface for each app from scratch. From picking the font families and colour schemes to designing the layout for each screen and individual components, I'm extremely familiar with the interface design process since I've applied it to a variety of different use cases. In the designing of the user experience, I also experiment with new concepts that I think might be more effective than existing solutions, such as Hotboxes or the Tandem-Rendered UI (TRUI). However, implementing these novel ideas into Flutter, which is the framework I use to build my web apps, requires that I develop a strong grasp of not only the Dart language, but also the Flutter SDK as well. Over the course of my projects, I have developed a strong bond with Flutter, and despite its one-line error messages, I can eventually track down and resolve every single bug, even if it takes hours sometimes. Complementing most of the Flutter frontends are Firestore databases that persist data across sessions, and so I am also familiar with Firebase hosting and Firestore storage as well. I enjoy building scalable Flutter apps architected for efficiency and maintainability that can integrate seamlessly with Firestore databases.""",
                  ),
                ),
              ],
            ),
          ),
          ViewportSize(
            child: Stack(
              children: [
                Positioned(
                  top: Multiplatform.currentPlatform == const DesktopPlatform()
                      ? 50
                      : null,
                  left: Multiplatform.currentPlatform == const DesktopPlatform()
                      ? 50
                      : null,
                  child: ExpandableCard(
                    desktopAllowedWidth:
                        MediaQuery.of(context).size.width * 0.6,
                    header: 'Man and Machine: The Vision',
                    content:
                        """A future where thoughtfully-designed interfaces aided by state-of-the-art technology can help humans strive for the only thing in life that truly matters — balance.""",
                  ),
                ),
                Center(
                  child: Image.asset(
                    'images/artworks/Signature.png',
                    height: MediaQuery.of(context).size.height * 0.4,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
/**
 * 
 * I'm Siddharth Chitikela, a passionate developer who is currently studying in IBDP year two. 

- what im good at
My portfolio consists of many coding projects of different sizes and topics, but most of them are web apps because I enjoy designing the user interface for each app from scratch. From picking the font families and colour schemes to designing the layout for each screen and individual components, I'm extremely familiar with the interface design process since I've applied it to a variety of different use cases. In the designing of the user experience, I also experiment with new concepts that I think might be more effective than existing solutions, such as Hotboxes or the Tandem-Rendered UI (TRUI). However, implementing these novel ideas into Flutter, which is the framework I use to build my web apps, requires that I develop a strong grasp of not only the Dart language, but also the Flutter SDK as well. Over the course of my projects, I have developed a strong bond with Flutter, and despite its one-line error messages, I can eventually track down and resolve every single bug, even if it takes hours sometimes. Complementing most of the Flutter frontends are Firestore databases that persist data across sessions, and so I am also familiar with Firebase hosting and Firestore storage as well. Building scalable

- why me
I have a burning passion to learn as much as I can about the world of information systems, and to learn by doing. Whether I have to learn a new language like Dart, a new tool like Docker, or a new concept like web security, I am more than ready because I undertake challenges with genuine curiosity and interest — not fear or intimidation. As such, I am able to pick up the necessary skills and domain knowledge required to accomplish goals even in uncharted territory. Furthermore, having had to juggle academics, extra-curricular activites and personal commitments together  with my coding projects, I have developed a stringent work ethic that enables me to give every task my complete attention and effort.

- my journey
My foray into the programming world started when I was fourteen, and I picked up a little Python to build CLI scripts and automations. From there, once I realised how much control over data and processes programming languages can give, I could not stop exploring. I experimented with iOS shortcuts as well, building quite complex tools for personal use, and then I moved on to Scriptable for iOS — an app that lets you program custom iOS widgets using JavaScript. Once I discovered NodeJS, my interest really took off, turning from a curiosity to a strong passion. With NodeJS, I built a few Discord bots and had a bit of fun, but by then my confidence had increased, so wanted to develop my own application. Without knowing anything about app development, databases, networking or security, I took a leap of faith. I remember that at fifteen, all I had was a decent grasp of NodeJS and a rough idea of the app I wanted to build. However, I taught myself everything needed to build a full-fledged app, from Flutter and Dart (remember, learning a statically-typed language for the first time can be quite mind-boggling) to Firestore, JSON web tokens, and the MVC app architecture. Soon, I plan to research into the field of autonomic computing, since it has always been a dream of mine to build a self-managed system.

- what else i do
Apart from coding with coffee and some good hip-hop, I also play badminton, football, and the electric guitar. But I would always pick hanging out with my bestest friends over anything, in a heartbeat. Sometimes I also try to draw photorealistic cars, but I'm not very good at it, so I stick to logo designing.
 */