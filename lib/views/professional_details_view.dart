part of octane;

class ProfessionalDetailsView extends StatefulWidget {
  const ProfessionalDetailsView({super.key});

  @override
  State<StatefulWidget> createState() => ProfessionalDetailsViewState();
}

class ProfessionalDetailsViewState extends State<ProfessionalDetailsView> {
  final PageController pageController = PageController();
  ScrollPhysics scrollPhysics = const NeverScrollableScrollPhysics();

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
      child: SelectionArea(
        child: ViewportSnappingScrollView(
          controller: pageController,
          children: [
            ViewportSize(
              child: Center(
                child: Text(
                  'PROFESSIONAL',
                  style: pageTitle.apply(
                    const TextStyle(color: OctaneTheme.obsidianA150),
                  ),
                ),
              ),
            ),
            ViewportSize(
              child: VisibilityDetector(
                key: const Key('cv_view'),
                onVisibilityChanged: ((VisibilityInfo info) {
                  if (info.visibleFraction == 1) {
                    setState(() {
                      scrollPhysics = const AlwaysScrollableScrollPhysics();
                    });
                  } else {
                    setState(() {
                      scrollPhysics = const NeverScrollableScrollPhysics();
                    });
                  }
                }),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: SingleChildScrollView(
                    physics: scrollPhysics,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Curriculum Vitae (CV)',
                          style: heading1.apply(
                            const TextStyle(color: OctaneTheme.obsidianA150),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          "Personal Information",
                          style: heading2.apply(
                            const TextStyle(color: OctaneTheme.obsidianC050),
                          ),
                        ),
                        Text(
                          "Siddharth Chitikela",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "Email Address: siddharth.chitikela@gmail.com",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Education History",
                          style: heading2.apply(
                            const TextStyle(color: OctaneTheme.obsidianC050),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Secondary Education",
                          style: heading4.apply(
                            const TextStyle(color: OctaneTheme.obsidianB050),
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "- Studied at Tanjong Katong Secondary School",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Graduated with an O-level certificate, L1R5 raw score of 6, and 2 bonus points",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Subjects: Additional Math, Elementary Math, Combined Humanities (Geography + Social Studies), English, Design and Technology, Physics, and Chemistry.",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Tertiary Education",
                          style: heading4.apply(
                            const TextStyle(color: OctaneTheme.obsidianB050),
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "- Studying IB Diploma at Anglo-Chinese School (Independent)",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Subjects: HL Physics, HL Computer Science, HL Math (AA), SL Language & Literature (A), SL Hindi (B) and SL Economics.",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Co-Curricular Activities",
                          style: heading2.apply(
                            const TextStyle(color: OctaneTheme.obsidianC050),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "National Cadet Corps (NCC) Sea",
                          style: heading4.apply(
                            const TextStyle(color: OctaneTheme.obsidianB050),
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "- Planned and executed training sessions for Secondary Two students as Junior Cadets Second Platoon Sergeant",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Participated in dragonboating and kayaking events",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Completed virtual (due to COVID) Mini Kayaking Expedition",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Represented school and placed 3rd for Bends and Hitches (BnH) competition",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Young Entrepreneurs' Society (YES)",
                          style: heading4.apply(
                            const TextStyle(color: OctaneTheme.obsidianB050),
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "- Organised and executed multiple sessions as ExCo",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Handled administrative CCA matters as Head of Administration",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Represnted school and placed 3rd in Young Entrepreneurs' Challenge (YEC) 2023",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Represented school in Raffles Business Symposium",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Organised YEC 2024",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Personal Undertakings",
                          style: heading4.apply(
                            const TextStyle(color: OctaneTheme.obsidianB050),
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "- The Lighthouse Project: Developed and deployed a personal productivity application, built with Flutter/Dart and backed by Firestore",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- The Hyperion Project: Conducting independent research and development on an up-and-coming field of computer science, known as autonomic computing",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Letterpress: Built my own blogging site to share my experience and ideas while working on coding projects, deployed using Firebase Hosting",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Affogato Project: Built an extensible and feature-rich code editor for the Flutter community",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Project Redline: Built and documented a toolkit for improving Flutter app functionality by making responsive design easier and introducing innovative navigation controls",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Orca: Built a lightweight orchestration tool for non-developers to install, launch and monitor locally-hosted Flutter apps.",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Flutter Hotbox: Part of Project Redline, an innovative solution to de-clutter interfaces by using a unique model to enable search/replace functions and page navigation",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Turbocal: Built an extensible and feature-rich calendar widget for the Flutter community",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Academic Awards",
                          style: heading2.apply(
                            const TextStyle(color: OctaneTheme.obsidianC050),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "- Studied at Tanjong Katong Secondary School",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Academic Awards",
                          style: heading2.apply(
                            const TextStyle(color: OctaneTheme.obsidianC050),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "- Australian Mathematics Competition (Junior Division): Certificate of Proficiency",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Model Student of English (TKSS)",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Model Student of DnT (TKSS)",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "-3-time Principal's Honour List (TKSS)",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Queen's Commonwealth Essay Writing: Participation",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- C.B. Paul Science Quiz: Participation",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Singapore Junior Physics Olympiad 2022: Honourable Mention",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- SINDA Award",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Non-Academic Awards",
                          style: heading2.apply(
                            const TextStyle(color: OctaneTheme.obsidianC050),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "- Clinched 2nd place in Respect YRC F&B business pitch",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "Further Qualifications",
                          style: heading2.apply(
                            const TextStyle(color: OctaneTheme.obsidianC050),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "- Played classical guitar up to Grade 6, certified by Associated Board of the Royal Schools of Music (ABRSM), and then continued electric guitar informally",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Singapore Canoe Federation Kayaking Proficiency 1-Star Award",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- St John's First Aid Certified",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Google Professional Cloud Architect (PCA) Certificate",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- I can swim really fast",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Other Activities",
                          style: heading2.apply(
                            const TextStyle(color: OctaneTheme.obsidianC050),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "- Completed the Drones, AI, Machine Learning Course by 65Drones",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Developed a complete web application during Roboto & DSTA Application Innovation and Design Hackathon",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Qualified as finalist in National Olympiad for Informatics (NOI) Singapore 2024",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Internship/Work Experience",
                          style: heading2.apply(
                            const TextStyle(color: OctaneTheme.obsidianC050),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "- Participated in a two-week Work Experience Programme at TC Acoustic Singapore, a major audio distributor in Southeast Asia, where I also shadowed the UI/UX team",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        Text(
                          "- Interned for four weeks at Abbott, an American multinational healthcare and nutrition company, where I learnt about different functions in a large corporation, as well as the processes involved in taking an idea from concept to shelf. I also developed a game that was hosted on the web as part of the project.",
                          style: body2.apply(
                            const TextStyle(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ViewportSize(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Contact Details',
                      style: heading1.apply(
                        const TextStyle(color: OctaneTheme.obsidianA150),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      """If you have any enquiries related to my work or would simply like to chat, please feel free to reach out through any of the following platforms:

Email: obsidian.infinitum@gmail.com
LinkedIn: www.linkedin.com/in/siddharth-chitikela
GitHub: https://github.com/ObsidianXVI

I'd be more than happy to respond!
""",
                      textAlign: TextAlign.center,
                      style: body1.apply(
                        const TextStyle(color: OctaneTheme.obsidianB000),
                      ),
                    ),
                    Image.asset(
                      'images/artworks/Signature.png',
                      height: 300,
                    ),
                  ],
                ),
              ),
            ),

            /* ViewportSize(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 20,
                    width: 600,
                    height: 600,
                    child: Image.asset(
                      'images/avatar.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 50,
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      width: 820,
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
                            style: heading1(color: OctaneTheme.obsidianA150),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            """I'm Siddharth Chitikela, a passionate developer who is currently studying in IBDP year two. I have a burning passion to learn as much as I can about the world of information systems, and to learn by doing. Whether I have to learn a new language like Dart, a new tool like Docker, or a new concept like web security, I am more than ready because I undertake challenges with genuine curiosity and interest — not fear or intimidation. As such, I am able to pick up the necessary skills and domain knowledge required to accomplish goals even in uncharted territory. Furthermore, having had to juggle academics, extra-curricular activites and personal commitments together  with my coding projects, I have developed a stringent work ethic that enables me to give every task my complete attention and effort.

Apart from coding with coffee and some good hip-hop, I also play badminton, football, and the electric guitar. But I would always pick hanging out with my bestest friends over anything, in a heartbeat. Sometimes I also try to draw photorealistic cars, but I'm not very good at it, so I stick to logo designing.""",
                            textAlign: TextAlign.right,
                            style: body1(color: OctaneTheme.obsidianB000),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ViewportSize(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Actually, what we want to do here is to continue the picture from neck-down of Tommy to show his full height
                    Text(
                      'My Journey',
                      style: heading1(color: OctaneTheme.obsidianA150),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 700),
                      child: Text(
                        """My foray into the programming world started when I was fourteen, and I picked up a little Python to build CLI scripts and automations. From there, once I realised how much control over data and processes programming languages can give, I could not stop exploring. I experimented with iOS shortcuts as well, building quite complex tools for personal use, and then I moved on to Scriptable for iOS — an app that lets you program custom iOS widgets using JavaScript. Once I discovered NodeJS, my interest really took off, turning from a curiosity to a strong passion. With NodeJS, I built a few Discord bots and had a bit of fun, but by then my confidence had increased, so wanted to develop my own application. Without knowing anything about app development, databases, networking or security, I took a leap of faith. I remember that at fifteen, all I had was a decent grasp of NodeJS and a rough idea of the app I wanted to build. However, I taught myself everything needed to build a full-fledged app, from Flutter and Dart (remember, learning a statically-typed language for the first time can be quite mind-boggling) to Firestore, JSON web tokens, and the MVC app architecture. Soon, I plan to research into the field of autonomic computing, since it has always been a dream of mine to build a self-managed system.""",
                        style: body1(color: OctaneTheme.obsidianB000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ViewportSize(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Actually, what we want to do here is to continue the picture from neck-down of Tommy to show his full height
                    Text(
                      'Curriculum Vitae',
                      style: heading1(color: OctaneTheme.obsidianA150),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(
                          width: 700,
                          child: Text(
                            """My portfolio consists of many coding projects of different sizes and topics, but most of them are web apps because I enjoy designing the user interface for each app from scratch. From picking the font families and colour schemes to designing the layout for each screen and individual components, I'm extremely familiar with the interface design process since I've applied it to a variety of different use cases. In the designing of the user experience, I also experiment with new concepts that I think might be more effective than existing solutions, such as Hotboxes or the Tandem-Rendered UI (TRUI). However, implementing these novel ideas into Flutter, which is the framework I use to build my web apps, requires that I develop a strong grasp of not only the Dart language, but also the Flutter SDK as well. Over the course of my projects, I have developed a strong bond with Flutter, and despite its one-line error messages, I can eventually track down and resolve every single bug, even if it takes hours sometimes. Complementing most of the Flutter frontends are Firestore databases that persist data across sessions, and so I am also familiar with Firebase hosting and Firestore storage as well. I enjoy building scalable Flutter apps architected for efficiency and maintainability that can integrate seamlessly with Firestore databases.""",
                            style: body1(color: OctaneTheme.obsidianB000),
                          ),
                        ),
                        const SizedBox(width: 40),
                        Image.asset(
                          'images/artworks/airship.png',
                          width: 500,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ViewportSize(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Actually, what we want to do here is to continue the picture from neck-down of Tommy to show his full height
                    Text(
                      'Contact Details',
                      style: heading1(color: OctaneTheme.obsidianA150),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      """If you have any enquiries related to my work or would simply like to chat, please feel free to reach out through any of the following platforms:

Email: infinitum.labs.inc@gmail.com
LinkedIn: www.linkedin.com/in/siddharth-chitikela

I'd be more than happy to respond!
""",
                      style: body1(color: OctaneTheme.obsidianB000),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 450, top: 80),
                      child: Image.asset(
                        'images/artworks/Signature.png',
                        height: 500,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
           */
          ],
        ),
      ),
    );
  }
}
