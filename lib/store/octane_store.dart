part of octane;

class OctaneStore {
  static final List<Project> projects = [
    lighthouseProject,
    hyperionProject,
    letterpress,
    orca,
    fireside,
    projectRedline,
    affogato,
    octane,
  ];
}

const Project lighthouseProject = Project(
  name: 'Lighthouse Project',
  shortDesc:
      "The Lighthouse Project aims to revolutionise personal productivity through powerful tools and documentation.",
  primary: Color(0xFF221732),
  accent: Color(0xFFA875FB),
  thumbnail: 'figma_design_system',
  about:
      """In the Lighthouse Project, my main focus is the Lighthouse web app — a powerful all-in-one, free-forever tool that helps you organise the various sectors of your life in a sustainable manner. The focus of the web app is to be "intelligent", automating as much of the administrative work as possible so that you can focus on actually completing your tasks. The web app is so feature-rich that I've also compiled a repository of documentation that guide the user through using different features of Lighthouse at different levels of depth. From bird's-eye-view for beginners to detailed feature-specific guides for the familiar, the documentation caters to users of all backgrounds. Further, elaborate guides detailing the design process and development decisions also make it easy for other developers to understand how Lighthouse came into being, allowing them to also improve on the product if needed.

From its inception in 2021 to its first stable release in 2024, the Lighthouse Project is one of my two flagship projects.""",
  product: ["I created a web app using Flutter."],
  process: ["I just start then i finish."],
  delta: ["I learn a lot tho"],
  allAssets: {
    'github_dbprovider_changes':
        AssetImage('images/lighthouse_project/github_dbprovider_changes.png'),
    'figjam_launchcontext_brainstorm': AssetImage(
        'images/lighthouse_project/figjam_launchcontext_brainstorm.png'),
    'figma_design_system':
        AssetImage('images/lighthouse_project/figma_design_system.png'),
    'dart_widget_inspector':
        AssetImage('images/lighthouse_project/dart_widget_inspector.png'),
    'github_bugs': AssetImage('images/lighthouse_project/github_bugs.png'),
  },
  showcase: Showcase(
    images: [
      AssetImage('images/lighthouse_project/dart_widget_inspector.png'),
      AssetImage('images/lighthouse_project/figma_design_system.png'),
    ],
    headers: [
      "Flutter and Dart Crash Course",
      "Brand and Identity Design",
    ],
    descriptions: [
      "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
      "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
    ],
  ),
);

const Project hyperionProject = Project(
  name: 'The Hyperion Project',
  shortDesc:
      "The Hyperion Project is a trailblazer in the field of autonomic computing, and aims to bring together the community to develop centralised autonomic services that enable resilient systems.",
  primary: Color(0xFF0D1B2A),
  accent: Color(0xFFFCA311),
  thumbnail: 'gh_org',
  about:
      """The Hyperion Project is a megaproject I started to explore the field of autonomic computing. At the time of writing in 2023, autonomic computing was a relatively new topic, just about ten or so years old. There were many studies about sub-topics in autonomic systems, such as AI/ML, distributed systems, and observability. However, research papers on the topic itself were scarce, so I wanted to kickstart R&D in this field.

Why autonomic computing? Well, I've always thought about the possibility of self-managed systems since I was a wee lad, but never once did I imagine that it was an actual area of research. After finding out it was, and that developments in the field of AI/ML bring us ever closer to that vision, I could not wait to start tinkering with code and conducting independent research on the subject.

From its inception in 2023, The Hyperion Project is the second of my two flagship projects.""",
  product: ["I created a web app using Flutter."],
  process: ["I just start then i finish."],
  delta: ["I learn a lot tho"],
  allAssets: {
    'sosa_acra_ss': AssetImage('images/thp/SOASA_ACRA_SS.png'),
    'thp_archs_brainstorm': AssetImage('images/thp/THP_Archs_Brainstorm.png'),
    'thp_gh_ac_dyn': AssetImage('images/thp/github_autocloud_dynamism.png'),
    'thp_notion_telem':
        AssetImage('images/thp/notion_telemetry_researchpaper.png'),
    'gh_org': AssetImage('images/thp/THP_Github_org.png'),
    'sosa_mapek': AssetImage('images/thp/SOASA_MAPEK_SS.png'),
  },
  showcase: Showcase(
    images: [
      AssetImage('images/thp/SOASA_ACRA_SS.png'),
      AssetImage('images/thp/github_autocloud_dynamism.png'),
      AssetImage('thp/SOASA_MAPEK_SS.png'),
    ],
    headers: [
      "Dart Superpowers",
      "Research and Development",
      "Lel",
    ],
    descriptions: [
      "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
      "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
      "jooooo",
    ],
  ),
);

const Project letterpress = Project(
  name: 'Letterpress',
  shortDesc:
      "Letterpress is my personal blogging page, driven by a custom-built blogging engine.",
  primary: Color(0xFF010102),
  accent: Color(0xFFF8F8F8),
  thumbnail: 'lp_typescale',
  about:
      """Letterpress allows me to discuss various Flutter/Dart related articles and to document some of my undertakings.

From its inception and first stable release in 2023, Letterpress is part of my personal portfolio.
""",
  product: ["I created a web app using Flutter."],
  process: ["I just start then i finish."],
  delta: ["I learn a lot tho"],
  allAssets: {
    'lp_typescale': AssetImage('images/letterpress/lp_typescale.png'),
    'dart_err': AssetImage('images/letterpress/dart_error.png'),
    'affogato_brainstorm':
        AssetImage('images/letterpress/lp_affogato_brainstorm.png'),
  },
);

const Project orca = Project(
  name: 'Orca',
  shortDesc:
      "Orca enables you to manage the installation, maintenance and runtimes of locally-hosted Flutter web apps.",
  primary: Color(0xFFedf2f4),
  accent: Color(0xFF2b2d42),
  thumbnail: 'dart_widget_inspector',
  about: """ """,
  product: ["I created a web app using Flutter."],
  process: ["I just start then i finish."],
  delta: ["I learn a lot tho"],
  allAssets: {
    'dart_widget_inspector':
        AssetImage('images/lighthouse_project/dart_widget_inspector.png'),
  },
);

const Project fireside = Project(
  name: 'Fireside',
  shortDesc:
      "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
  primary: Color(0xFF6a994e),
  accent: Color(0xFFbc4749),
  thumbnail: 'dart_widget_inspector',
  about: """ """,
  product: ["I created a web app using Flutter."],
  process: ["I just start then i finish."],
  delta: ["I learn a lot tho"],
  allAssets: {
    'dart_widget_inspector':
        AssetImage('images/lighthouse_project/dart_widget_inspector.png'),
  },
);

const Project affogato = Project(
  name: 'Affogato',
  shortDesc:
      'Affogato is a feature-packed code editor built with Flutter, for Flutter.',
  primary: Color(0xFF6a994e),
  accent: Color(0xFFbc4749),
  thumbnail: 'dart_widget_inspector',
  allAssets: {
    'dart_widget_inspector':
        AssetImage('images/lighthouse_project/dart_widget_inspector.png'),
  },
  about:
      """Affogato explores an end-to-end language development framework. From implementing a parser and an interpreter to static analysis and IDE support, Affogato aims to streamline the process of creating custom programming languages. Part of the project is the Affogato Editor, which is a full-featured code editor built with Flutter, for Flutter.

From its inception in 2023 to its first stable release in 2024, Affogato is one of my mini-projects.""",
  product: ["I created a web app using Flutter."],
  process: ["I just start then i finish."],
  delta: ["I learn a lot tho"],
);

const Project projectRedline = Project(
  name: 'Project Redline',
  shortDesc:
      'Affogato is a feature-packed code editor built with Flutter, for Flutter.',
  primary: Color(0xFF6a994e),
  accent: Color(0xFFbc4749),
  thumbnail: 'responsiveness_ATF',
  allAssets: {
    'responsiveness_ATF': AssetImage(
        'images/redline/Notion_Docs_Responsiveness_ATF_Screenshot.png'),
  },
  about:
      """Affogato explores an end-to-end language development framework. From implementing a parser and an interpreter to static analysis and IDE support, Affogato aims to streamline the process of creating custom programming languages. Part of the project is the Affogato Editor, which is a full-featured code editor built with Flutter, for Flutter.

From its inception in 2023 to its first stable release in 2024, Affogato is one of my mini-projects.""",
  product: ["I created a web app using Flutter."],
  process: ["I just start then i finish."],
  delta: ["I learn a lot tho"],
);

const Project octane = Project(
  name: 'Octane',
  shortDesc: 'Octane is my personal portfolio site.',
  product: ["this"],
  process: ["I just start then i finish."],
  delta: ["I learn a lot tho"],
  primary: OctaneTheme.obsidianD150,
  accent: OctaneTheme.obsidianX150,
  thumbnail: 'initial_2',
  allAssets: {
    'octane_v2': AssetImage('images/octane/Octane_v2.png'),
    'brainstorm_1': AssetImage('images/octane/Brainstorm_1.png'),
    'brainstorm_2': AssetImage('images/octane/Brainstorm_2.png'),
    'brainstorm_3': AssetImage('images/octane/Brainstorm_3.png'),
    'colorgrid': AssetImage('images/octane/ColorGrid.png'),
    'initial_2': AssetImage('images/octane/Initial_2.png'),
    'octane_typescale': AssetImage('images/octane/Octane_typescale.png'),
    'initial_1': AssetImage('images/octane/Initial_1.png'),
  },
  about: 'Octane be like that',
);
