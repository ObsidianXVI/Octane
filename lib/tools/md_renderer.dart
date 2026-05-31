import 'package:md2lp/md2lp.dart';
import 'package:markdown/markdown.dart';

class MDTranspiler {
  final List<ParseMode> parseModes = [];
  final List<String> result = [];

  List<String> transpile(String mdSource) {
    final ast = Document(
      blockSyntaxes: [ImageBlockParser()],
    ).parse(mdSource);
    for (final Node node in ast) {
      handleNode(node);
    }
    return result;
  }

  void handleNode(Node n) {
    if (n is Element) {
      return handleElementNode(n);
    } else {
      n as Text;
      return handleTextNode(n);
    }
  }

  void handleElementNode(Element e) {
    if (e.children == null) result.add(e.textContent);
    if (e.children!.length > 1) {
      switch (e.tag) {
        case 'p':
          parseModes.add(ParseMode.textspan);
          result.add("OctaneTextSpan(textComponents: [");
          break;
        case 'ul':
          parseModes.add(ParseMode.unorderedList);
          result.add(
              "SingleLevelListSpan(listType: ListType.bullet, listItems: [");
          break;

        case 'ol':
          parseModes.add(ParseMode.orderedList);
          result.add(
              "SingleLevelListSpan(listType:  LPListType.numbered, listItems: [");
          break;

        case 'li':
          parseModes.add(ParseMode.textspan);
          result.add("OctaneTextSpan(textComponents: [");
          break;
      }

      for (final Node n in e.children!) {
        handleNode(n);
      }
      if (parseModes.isNotEmpty) {
        switch (parseModes.last) {
          case ParseMode.textspan:
            break;
          case ParseMode.unorderedList:
            break;
          case ParseMode.orderedList:
            result.add("],),");
            parseModes.removeLast();
            break;
          default:
            break;
        }
      }
    } else {
      // Single-child element means child is a Text node
      switch (e.tag) {
        case 'h1':
          result.add(
              "OctaneText.header1(content: \"${e.textContent.sanitised()}\",),");
          break;
        case 'h2':
          result.add(
              "OctaneText.header2(content: \"${e.textContent.sanitised()}\",),");
          break;
        case 'h3':
          result.add(
              "OctaneText.header3(content: \"${e.textContent.sanitised()}\",),");
          break;
        case 'a':
          result.add(
              "OctaneText.hyperlink(content: \"${e.textContent.sanitised()}\", url: \"${e.attributes['href']}\",),");
          break;
        case 'em':
          result.add(
              "OctaneText.plainBody(content: \"${e.textContent.sanitised()}\", isBold: true,),");
          break;
        case 'strong':
          result.add(
              "OctaneText.plainBody(content: \"${e.textContent.sanitised()}\", isItalic: true,),");
          break;
        case 'del':
          result.add(
              "OctaneText.plainBody(content: \"${e.textContent.sanitised()}\", isStrikethrough: true,),");
          break;
        case 'pre':
          break;
        case 'code':
          result.add(
              "OctaneText.codeStyle(content: \"${e.textContent.sanitised()}\", inline: ${parseModes.isNotEmpty},),");
          break;
        case 'img':
          result.add(
              "Image.network(\"${e.attributes['url']}\", width: ${e.attributes['width']}, height: ${e.attributes['height']},),");
          break;
        case 'li':
          result.add(
              "OctaneText.plainBody(content: \"${e.textContent.sanitised()}\",),");
          break;
        default:
          break;
      }
    }
  }

  void handleTextNode(Text t) {
    result.add(
        "OctaneText.plainBody(content: \"${t.textContent.sanitised()}\",),");
  }
}

void main(List<String> _) {
  print(MDTranspiler().transpile(srcAbt));
  print('====');
  print(MDTranspiler().transpile(srcProd));
  print('====');

  print(MDTranspiler().transpile(srcProc));
  print('====');

  print(MDTranspiler().transpile(srcDelta));
}

const String srcAbt = """Inspired by the book ,
    [Getting Things Done: The Art of Stress-free Productivity](https://gettingthingsdone.com/what-is-gtd/),
     by David Allen, I tried implementing a rigorous productivity system using the tools I had available at the time. After jumping between Asana, Trello, Jira, Notion, Google Calendar, Apple Reminders, etc., I realised that each tool offered its own strengths and weaknesses. 108 iOS Shortcuts scripts later, I also discovered that integrating them all together was extremely difficult as well. A tool is needed that is free, that offers a diverse and customisable set of features, and that reduces administrative workload as well.

In the Lighthouse Project, my main focus is the Lighthouse web app — a powerful all-in-one, free-forever tool that helps you organise the various sectors of your life in a sustainable manner. The focus of the web app is to be intelligent, automating as much of the administrative work as possible so that you can focus on actually completing your tasks. The web app is so feature-rich that I've also compiled a repository of documentation that guide the user through using different features of Lighthouse at different levels of depth. From bird's-eye-view for beginners to detailed feature-specific guides for the superusers, the documentation caters to users of all backgrounds. Further, elaborate guides detailing the design process and development decisions also make it easy for other developers to understand how Lighthouse came into being, allowing them to also improve on the product if needed.

Based heavily upon the GTD methodology and the modern-day concerns of implementing the GTD system, Lighthouse aims to revolutionise personal productivity.,
    From its inception in 2021 to its first stable release in 2024, the Lighthouse Project is the first of my two flagship projects.""";

const srcProd =
    """The final product, the Lighthouse web app, is in private beta release now, undergoing testing by a  professional UI/UX design team. The app stores data locally for now, not only to make it free, but also to make development and innovation of new ideas easier.

Once more collaboration features are involved, I plan to utilise cloud databases in order to implement related features.""";

const srcProc =
    """With Lighthouse, I was already very clear on the exact solution I wanted to implement, so the only research I did was a market analysis to summarise all the features offered by major players in the field, such as Asana, Jira, Trello, Notion, and the likes.

Once I confirmed the features Lighthouse would offer, I started designing the user experience first. I thought about how information would be presented and manipulated, used and processed. This involved brainstorming new models for the interface and how the user would access the app.""";

const srcDelta = """- Full crash course on Dart and Flutter
- designing functional, beautiful interfaces in Figma
- extensive debugging skills
- usage of Firestore as database
- JWT keys for securing payloads sent over the network""";
