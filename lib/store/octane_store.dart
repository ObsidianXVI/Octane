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
  thumbnail: 'logo_transp',
  about: [
    "Inspired by the book ",
    "@link{{https://gettingthingsdone.com/what-is-gtd/},Getting Things Done: The Art of Stress-free Productivity}",
    """ by David Allen, I tried implementing a rigorous productivity system using the tools I had available at the time. After jumping between Asana, Trello, Jira, Notion, Google Calendar, Apple Reminders, etc., I realised that each tool offered its own strengths and weaknesses. 108 iOS Shortcuts scripts later, I also discovered that integrating them all together was extremely difficult as well. A tool is needed that is free, that offers a diverse and customisable set of features, and that reduces administrative workload as well.

In the Lighthouse Project, my main focus is the Lighthouse web app — a powerful all-in-one, free-forever tool that helps you organise the various sectors of your life in a sustainable manner. The focus of the web app is to be "intelligent", automating as much of the administrative work as possible so that you can focus on actually completing your tasks. The web app is so feature-rich that I've also compiled a repository of documentation that guide the user through using different features of Lighthouse at different levels of depth. From bird's-eye-view for beginners to detailed feature-specific guides for the superusers, the documentation caters to users of all backgrounds. Further, elaborate guides detailing the design process and development decisions also make it easy for other developers to understand how Lighthouse came into being, allowing them to also improve on the product if needed.

Based heavily upon the GTD methodology and the modern-day concerns of implementing the GTD system, Lighthouse aims to revolutionise personal productivity.""",
    "From its inception in 2021 to its first stable release in 2024, the Lighthouse Project is the first of my two flagship projects.",
  ],
  product: [
    """The final product, the Lighthouse web app, is in private beta release now, undergoing testing by a  professional UI/UX design team. The app stores data locally for now, not only to make it free, but also to make development and innovation of new ideas easier.

Once more collaboration features are involved, I plan to utilise cloud databases in order to implement related features.""",
  ],
  process: [
    """With Lighthouse, I was already very clear on the exact solution I wanted to implement, so the only research I did was a market analysis to summarise all the features offered by major players in the field, such as Asana, Jira, Trello, Notion, and the likes.

Once I confirmed the features Lighthouse would offer, I started designing the user experience first. I thought about how information would be presented and manipulated, used and processed. This involved brainstorming new models for the interface and how the user would access the app.""",
    "@img{{figjam_launchcontext_brainstorm}}",
    "@img{{sprint_planning_steps}}",
    "While it was easy to envision a seamless user experience where the app could almost read the user’s mind, translating the experience into an interface proved to be a challenge for me. This is because one of the key selling points of the app would be to reduce administrative load on the user, but if the user was always constantly reading documentation to try and figure out how to use the app, the objective would not be achieved. To achieve a balance between usability and feature-packedness, Lighthouse had to go through 4 major UI overhauls. Each overhaul introduced new concepts, layouts, and design guidelines that made the design system more maintainable and effective as well.",
    "@img{{inputfieldcontroller}}",
    "Lighthouse also experiments with a highly maintainable architecture to combine the backend to the frontend by maximising code reusability. However, this does come at the cost of increased time taken to design the system and iterate with failed prototypes.",
    "@img{{storable_arch}}",
  ],
  delta: [
    "Full crash course on Dart and Flutter",
    "designing functional, beautiful interfaces in Figma",
    "extensive debugging skills",
    "usage of Firestore as database",
    "JWT keys for securing payloads sent over the network",
  ],
  allAssets: {
    'logo_transp':
        AssetImage('images/lighthouse_project/Lighthouse_Logo_V1_transp.png'),
    'github_dbprovider_changes':
        AssetImage('images/lighthouse_project/github_dbprovider_changes.png'),
    'figjam_launchcontext_brainstorm': AssetImage(
        'images/lighthouse_project/figjam_launchcontext_brainstorm.png'),
    'figma_design_system':
        AssetImage('images/lighthouse_project/figma_design_system.png'),
    'dart_widget_inspector':
        AssetImage('images/lighthouse_project/dart_widget_inspector.png'),
    'github_bugs': AssetImage('images/lighthouse_project/github_bugs.png'),
    'sprint_planning_steps':
        AssetImage('images/lighthouse_project/sprint_planning_steps.png'),
    'inputfieldcontroller':
        AssetImage('images/lighthouse_project/inputfieldcontroller.png'),
    'storable_arch': AssetImage('images/lighthouse_project/storable_arch.png'),
  },
  showcase: Showcase(
    images: [
      AssetImage('images/lighthouse_project/dart_widget_inspector.png'),
      AssetImage('images/lighthouse_project/figma_design_system.png'),
      AssetImage('images/lighthouse_project/inputfieldcontroller_small.png'),
    ],
    headers: [
      "Flutter and Dart Crash Course",
      "Brand and Identity Design",
      "Optimised Flutter-Firestore Architecture",
    ],
    descriptions: [
      "As my first serious project, I had to learn statically-typed languages, OOP concepts, and web development from scratch. Even the Flutter framework and Dart language were intimidating at first, but I persevered with the support of online documentation and YouTube videos.",
      "The branding of Lighthouse was very important to set it apart from competitors and also to give it a familiar and consistent look that could integrate well with the functionality of the app. Mastering Figma through experimentation and practice also proved pivotal for future projects.",
      "In order to minimise database accesses, maximise code reusability, and optimise conversion between JSON and native classes, I had to innovate a complex architecture that integrated the frontend with the backend.",
    ],
  ),
);

const Project hyperionProject = Project(
  name: 'The Hyperion Project',
  shortDesc:
      "The Hyperion Project is a trailblazer in the field of autonomic computing, and aims to bring together the community to develop centralised autonomic services that enable resilient systems.",
  primary: Color(0xFF0D1B2A),
  accent: Color(0xFFFCA311),
  thumbnail: 'logo',
  about: [
    """The Hyperion Project is a megaproject that I started to explore the field of autonomic computing. At the time of writing in 2023, autonomic computing was a relatively new topic, just about ten or so years old. There were many studies about sub-topics in autonomic systems, such as AI/ML, distributed systems, and observability. However, research papers on the topic itself were scarce, so I wanted to kickstart R&D in this field.

Why autonomic computing? Well, I've always thought about the possibility of self-managed systems since I was a wee lad, but never once did I imagine that it was an actual area of research. After finding out that it indeed was, and that developments in the field of AI/ML are bringing us ever closer to that vision, I could not wait to start tinkering with code and conducting independent research on the subject.

I also write about my journey of researching this field on my blog, Letterpress. For example, check out """,
    "@link{{https://letterpress-project.web.app/#/blogules/enter_autonomic_computing},this}"
        " article.",
    "From its inception in 2023, The Hyperion Project is the second of my two flagship projects.",
  ],
  product: [
    """Through this project, I aim to collate my understanding of the field and conduct a few experiments to explore some ideas I might have. Based on my research and that of other more experienced and knowledgeable computer scientists, I also hope to be able to develop a few tools to enable autonomic computing in the cloud. The end result, I hope, is a toolkit similar to cloud platforms that streamlines the process of migrating, developing, debugging, and maintaining an autonomic system.

Another key deliverable from this project would be Vabrian, a community-based R&D tool that allows the masses to collaboratively contribute ideas, experience, and experimental results to investigate various research questions."""
  ],
  process: [
    """This project is still in progress, but it allowed me to explore the more research-y side of computer science. Until now, I have carried out experiments in school using the scientific methodology, and written reports explaining whether a certain research question has been met or not, but this is the first time I’ve had to pick an appropriate research question in an unfamiliar topic.

I do find it quite tough, though, because the field is so very vast and there are numerous ways to start investigating different parts of an autonomic system, so I am still unsure of where/how to start. This uncertainty has impeded my progress in this project quite significantly, as I was constantly second-guessing every step that I take, and without any supervisor to guide me, it was starting to feel like a mammoth task.

For example, I had spent the latter half of 2023 writing a lengthy article on autonomic system architectures, but I soon started to wonder if that was indeed the best way to approach the task. I tried writing shorter papers on more specific sub-topics such as computer-addressable knowledge and policy/goal representation, but I couldn’t shake off the nagging feeling that there was already some research out there that covered the same topic at a greater breadth or depth.""",
    "Then I chose instead to start with a bare-bones system and add autonomic features to it, in the hopes that I would end up looking into more pragmatic areas of concern. Starting with a sample ",
    "@link{{https://github.com/Infinitum-Hyperion/Research-Cases/tree/main/xpress},blogging website}",
    """, I tried to incrementally give it autonomic features, but without any prior research, I was very much scoped into the solution I had in mind, and could not think of any alternatives during each step of the autonomicity-adding phase. At the turn of the year, however, I finally managed to get a decent grasp of what I wanted to do.

Starting first with a literature review to gain an overview of topics within the field, I decided to start with the more macro considerations — such as architecture and paradigms — before delving deeper into each micro concern — such as knowledge representation and adaptation at runtime. This gave me not only a sense of clarity and focus, but also renewed motivation, and I find that the process of researching has become very enjoyable once again. Using mind maps and more freeform tools to collate ideas and diagrams proved to be useful as well:""",
    "@img{{thp_archs_brainstorm}}",
    "But The Hyperion Project is more than just research about autonomic computing, the end objective is to create a platform with which autonomic systems can be built. Hence, I also had to think about how my approach to the business solution would be shaped from an end-user perspective:",
    "@img{{hyperion_codebase_overview}}",
    "However, the suite of tools offered and the approach to developing an autonomic system depended heavily on the research I conducted, and that is why I am currently researching the possible architectures for an autonomic system. From that point onwards, I will shift my approach from passive research-and-report articles to a documentation of my experience with trying to implement the chosen architecture(s) concretely.",
  ],
  delta: [
    "systematic research in an unfamiliar field",
    "implementing complex ideas and architectures in the Dart language",
    "branding, UIX design",
    "app development for the Autocloud web SaaS platform",
  ],
  allAssets: {
    'logo': AssetImage('images/thp/THP_Logo_V1.png'),
    'sosa_acra_ss': AssetImage('images/thp/SOASA_ACRA_SS.png'),
    'thp_archs_brainstorm': AssetImage('images/thp/THP_Archs_Brainstorm.png'),
    'thp_gh_ac_dyn': AssetImage('images/thp/github_autocloud_dynamism.png'),
    'thp_notion_telem':
        AssetImage('images/thp/notion_telemetry_researchpaper.png'),
    'gh_org': AssetImage('images/thp/THP_Github_org.png'),
    'sosa_mapek': AssetImage('images/thp/SOASA_MAPEK_SS.png'),
    'hyperion_codebase_overview':
        AssetImage('images/thp/hyperion_codebase_overview.png'),
  },
  showcase: Showcase(
    images: [
      AssetImage('images/thp/SOASA_ACRA_SS.png'),
      AssetImage('images/thp/github_autocloud_dynamism.png'),
      AssetImage('images/thp/SOASA_MAPEK_SS.png'),
    ],
    headers: [
      "Research and Development",
      "Importance of Iterative Development",
      "Creating Impactful and Ethical Software",
    ],
    descriptions: [
      "Autonomic computing, as a research topic in itself, entails a lot of uncertainty and also extensive possibilities, making it seem very daunting to me at first. However, getting familiar with the topic by reading research papers , I had a rough direction for my research.",
      "Rather than using conventional \"waterfall\" methods to develop the software, I realised the importance of small and rapid developments in supporting innovation and providing room for failures and errors. This principle helped me navigate the multidimensional uncertainty of such a bold undertaking.",
      "Any software artifact must follow ethical standards, but more so those which have the potential to affect not just the systems they are used in, but also the development of their respective domains. Thought processes and ideas behind every decision in The Hyperion Project are clearly documented for clarity and transparency.",
    ],
  ),
);

const Project letterpress = Project(
  name: 'Letterpress',
  shortDesc:
      "Letterpress is my personal blogging page, driven by a custom-built blogging engine.",
  primary: Color(0xFF010102),
  accent: Color(0xFFF8F8F8),
  thumbnail: 'big_o',
  about: [
    """Letterpress helps me translate my thoughts or reflections in markdown manuscripts to a beautiful and pragmatic website. With a feature called MD2LP, I can paste Markdown text (which can even contain custom syntax) that gets converted into the native Dart objects needed by Letterpress. 

Above all, the distinguishing feature of Letterpress is its unique take on blogging. Blogging is more than just a disjoint sequence of short articles on varying subjects. In the Letterpress model, short articles known as Blogules focusing on a particular subject can be published and read individually. However, multiple Blogules can be strung together to create a Post, which is a longer read but provides a broader insight into a specific subject.

Each Blogule can also be given tags to improve SEO, but tags also have another function. I started Letterpress because I wanted to document my thoughts and reflections as I worked on various coding projects. Thus, Blogules tagged with the same project name are also collated into what is known as a Journal. A Journal provides a chronological overview of Blogules belonging to a particular project.

From its inception in 2023 to its first stable release within a few months, Letterpress is a project linked to my portfolio site, Octane."""
  ],
  product: [
    "@link{{https://github.com/ObsidianXVI/Letterpress},Codebase}",
    "This website"
  ],
  process: [
    "The process of ideating, designing, and developing Letterpress was relatively simple because I already had a clear vision of the end product when I started. I knew exactly what features to include and how the final website would look like. The UI components were ported over from OctaneDS, the design system I used for my portfolio site, Octane."
  ],
  delta: [
    "creative thinking for a new blogging model",
    "UIX design of the web app",
    "usage of Firebase Hosting",
  ],
  allAssets: {
    'big_o': AssetImage('images/branding/Big_O.png'),
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
  thumbnail: 'logo',
  about: [],
  product: ["I created a web app using Flutter."],
  process: ["I just start then i finish."],
  delta: ["I learn a lot tho"],
  allAssets: {
    'logo': AssetImage('images/orca/Orca_Logo_V1.png'),
    'dart_widget_inspector':
        AssetImage('images/orca/dart_widget_inspector.png'),
  },
);

const Project fireside = Project(
  name: 'Fireside',
  shortDesc:
      "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
  primary: Color(0xFF6a994e),
  accent: Color(0xFFbc4749),
  thumbnail: 'fireside_cover',
  about: [],
  product: ["I created a web app using Flutter."],
  process: ["I just start then i finish."],
  delta: ["I learn a lot tho"],
  allAssets: {
    'fireside_cover': AssetImage('images/fireside/fireside_cover.png'),
  },
);

const Project affogato = Project(
  name: 'Affogato',
  shortDesc:
      'Affogato is a feature-packed code editor built with Flutter, for Flutter.',
  primary: Color(0xFF6a994e),
  accent: Color(0xFFbc4749),
  thumbnail: 'logo',
  allAssets: {
    'logo': AssetImage('images/affogato/Affogato_Logo_V1.png'),
    'dart_widget_inspector':
        AssetImage('images/lighthouse_project/dart_widget_inspector.png'),
  },
  about: [
    "The Affogato Project explores an end-to-end language development framework. From implementing a parser and an interpreter to static analysis and IDE support, Affogato aims to streamline the process of creating custom programming languages using Dart as the target language of transpilation. Along the way, the Affogato Editor was also conceived in order to supply the Flutter community with an out-of-the-box substitute Widget for Microsoft's ",
    "@link{{https://github.com/microsoft/monaco-editor},MonacoEditor}",
    ".",
    "I was always interested in creating my own programming languages and have tried many different methods based on YouTube videos. The one that worked best for me was the structured step-by-step guide ",
    "@link{{http://craftinginterpreters.com},craftinginterpreters.com}",
    """ by Robert Nystrom. What I realised however, was that much of the process involved in bringing a new language to life was different manifestations of the same syntactic rules. At the same time that I came up with my first full-fledged programming language, I was also working on The Lighthouse Project, which needed a custom scripting language for superusers to perform operations in the app quickly.

Initially, the implementation for that language was a Finite State Machine (FSM), but due to some programming errors, it became more of an uncertain state machine. After building out a full-fledged interpreter for the language, I was ready to give myself a pat on the back, when I realised that users still could not use the scripting language since it lacked a lot of language support, such as syntax highlighting, auto-complete, and static analysis. Heck, there wasn't even a proper code editor widget available on """,
    "@link{{https://pub.dev},pub.dev}",
    "! I then got to work designing a code editor that finally had all the bells and whistles of Monaco Editor, and the rest is history.",
    "From its inception in end-2023 to its first stable release in 2024, Affogato is one of my most favourite mini-projects.",
  ],
  product: [
    "AffogatoCore, a Dart library to build an end-to-end language framework",
    "Affogato Editor, a web app that provides an editor and IDE tooling for languages designed in Dart"
  ],
  process: [
    "Given my prior experience with creating programming languages (all those weeks of creating a programming language with just the Crafting Interpreters book by Robert Nystrom open in a Safari tab), I knew that the programming language would be composed of:",
    "- a tokeniser",
    "- a parser",
    "- an interpreter",
    "- optionally, a core library",
    "After research on ",
    "@link{{https://code.visualstudio.com/api/language-extensions/overview},bringing a new language to VSCode}",
    ", the following components also became necessary:",
    "- a TextMate theme file for syntax highlighting",
    "- an ",
    "@link{{https://microsoft.github.io/language-server-protocol/},LSP server}",
    " for static code analysis",
    "My goal with Affogato was to unify the whole process into a single Dart package, so that simple languages could be shipped effortlessly. Another benefit of using Affogato to create a programming language would be the seamless integration with the Affogato Editor. The Affogato Editor provides support for many languages (such as Markdown), as well as many features (such as bracket matching and auto-indentation) out-of-the-box.",
    """I created the editor first, by creating a giant `TextField`, and controlling the display by rendering custom-decorated `TextSpan`s in the field. Next, I set up boilerplate code for a generic interpreter framework, and used that to build a Markdown interpreter. With that, I was able to work on the integration between language and editor.

Adding theme support was easy, as I ported over the basic yet effective method of mapping AST nodes to scope names, and scope names to text styles. A package on """,
    "@link{{http://pub.dev},pub.dev}",
    """known as `highlight` was basically the Dart equivalent of `highlight.js`, so I used that to provide generic syntax highlighting for languages which did not have interpreters written in Dart.

Currently, I am working on making the editor more performant, by triggering a re-parse on only the sections of code which have been edited, instead of the entire document.""",
  ],
  delta: [
    "UIX design for the web editor",
    "development of a complex package that unifies multiple languages and tools",
  ],
);

const Project projectRedline = Project(
  name: 'Project Redline',
  shortDesc:
      'Project Redline is an exploration of various pragmatic and functional design systems in Flutter.',
  primary: Color(0xFF6a994e),
  accent: Color(0xFFbc4749),
  thumbnail: 'logo',
  allAssets: {
    'logo': AssetImage('images/redline/Redline_Logo_V1.png'),
    'responsiveness_ATF': AssetImage(
        'images/redline/Notion_Docs_Responsiveness_ATF_Screenshot.png'),
  },
  about: [
    """Project Redline is an exploration of various pragmatic and functional design systems in Flutter. The Redline package contains different tools that you can import when implementing your design systems in Flutter.

From its inception and first stable release in 2024, Project Redline is one of my mini-projects."""
  ],
  product: ["I created a web app using Flutter."],
  process: ["I just start then i finish."],
  delta: ["I learn a lot tho"],
);

const Project octane = Project(
  name: 'Octane',
  shortDesc: 'Octane is my personal portfolio site.',
  product: ["This live website"],
  process: [],
  delta: [
    "overcoming perfectionism: I found that a good remedy for not having any ideas is to start early and just put down any ideas that come to my mind. Trying to set a tight deadline on V1 also helps induce some pressure that forces my mind to get creative.",
    "familiarity with Firebase Hosting since Octane was the first site that I deployed publicly",
    "conveying brand image and identity without heavy reliance on colours"
  ],
  primary: OctaneTheme.obsidianD150,
  accent: OctaneTheme.obsidianX150,
  thumbnail: 'colorgrid_square',
  allAssets: {
    'octane_v2': AssetImage('images/octane/Octane_v2.png'),
    'brainstorm_1': AssetImage('images/octane/Brainstorm_1.png'),
    'brainstorm_2': AssetImage('images/octane/Brainstorm_2.png'),
    'brainstorm_3': AssetImage('images/octane/Brainstorm_3.png'),
    'colorgrid': AssetImage('images/octane/ColorGrid.png'),
    'colorgrid_square': AssetImage('images/octane/ColorGrid_Square.png'),
    'initial_2': AssetImage('images/octane/Initial_2.png'),
    'octane_typescale': AssetImage('images/octane/Octane_typescale.png'),
    'initial_1': AssetImage('images/octane/Initial_1.png'),
  },
  about: [
    "You're actually looking at it right now, because Octane is the name for my portfolio site. It strikes a fine balance between being professional and adding a personal touch. More than a show-and-tell website for my past coding projects, Octane itself subtly flexes a few brilliant UX-related features that work on a subliminal level.",
    "Ideation for Octane was really a chaotic mess because I just couldn't settle on a design that seemed even half-decent. During the creation of Octane, my personal portfolio site, I encountered numerous challenges which felt impossible to overcome at first. For example, due to my perfectionistic nature, I wanted my portfolio site to be the absolute best of my efforts, both in terms of design and code. I wanted the site's design itself to showcase my skills in order to impress the viewer, but during the ideation stage, I really hit a roadblock. I suddenly seemed to not have any good ideas at all, and even techniques which worked before, such as looking online for inspiration, didn't help me at all now.",
    """Since I still had to move ahead, I settled on a very simple design that I then proceeded to build out. During the process of actually writing code, I felt a bit more free and able to experiment with different designs, which is what finally allowed me to overcome the inspiration block. By trying out different layouts and styles, I was able to come up with a design that I thought was satisfactory.

Pushing out an initial version which was far from perfect helped clear my mind, and I was able to focus on “improving” rather than “perfecting”. In subsequent versions, I was able to implement innovative features such as Hotbox, a neat trick to declutter the site and preserve screen estate, not only keeping navigation controls one click away, but also allowing the content within view to be searched, filtered, and sorted.

Additionally, Tandem-Rendered UI (TRUI) slowly reveals UI elements such as buttons, cards, and text instead of loading all of them at once. By intelligently only rendering elements when the user needs them, TRUI lends a predictive feel to the overall website, making it truly come alive.

Together with beautiful hand-drawn art and animations being weaved into the site, Octane was slowly starting to exceed my expectations.""",
  ],
);
