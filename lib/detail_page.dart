import 'package:flutter/material.dart';
import 'package:flutter_html_textview/flutter_html_textview.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var isPressed = true;

  //mainImage
  Widget mainImageWidget(height) => Container(
        height: height / 2,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://pbs.twimg.com/profile_images/1012653532204302337/7vd6UATg_400x400.jpg"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 48, left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              IconButton(
                icon: (isPressed)
                    ? Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                        size: 28,
                      )
                    : Icon(
                        Icons.bookmark,
                        color: Colors.white,
                        size: 28,
                      ),
                onPressed: () {
                  setState(() {
                    if (isPressed == true) {
                      isPressed = false;
                    } else {
                      isPressed = true;
                    }
                  });
                },
              )
            ],
          ),
        ),
      );

  //Bottom Sheet Content

  Widget bottomContent(height, width) => Container(
        margin: EdgeInsets.only(top: height / 20),
        width: width,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 05.0, 20.0, 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //Category
              Text(
                "Android and Flutter development ",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange),
              ),

              SizedBox(
                height: 12,
              ),

              //Title
              Text(
                "Why Android developers should pay attention to Flutter in 2019",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),

              SizedBox(
                height: 12,
              ),

              //like and duration
              Row(
                children: <Widget>[
                  Icon(
                    Icons.access_time,
                    color: Colors.grey,
                    size: 16,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "25 sec ago",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.thumb_up,
                    color: Colors.grey,
                    size: 16,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "786",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              ),

              SizedBox(
                height: 20,
              ),

              //Profile Pic
              Row(
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://img0cf.b8cdn.com/images/uploads/user_photos/92/49611592_20180915142011.jpg"))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Chinnadurai Viswanathan",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(
                height: 30,
              ),

              HtmlTextView(
                data: """
                <div><a class='sup'><sup>pl</sup></a>Android and Flutter, both are the babies of Google. One company managing both the native and cross-platform mobile application development for Android apps. Android application development was started at Android Inc which was bought by Google in 2005. The Flutter project began at Google and the first ever Flutter SDK was released in 2017. It would be incredibly interesting to compare native Android development with Flutter app development and to see what would be the future of Android with the rise of Fuchsia. Let’s explore and try to answer all these questions.

Companies are looking for options to develop apps within a short time and with limited budget. Native mobile app development for iOS or Android always requires two different tech stacks, which results in two different teams and higher cost. This is the reason why companies started looking for cross-platform solutions. The popularity of the React-Native framework is one of the examples of this fact.

Unless you are living on a small island without the internet, you must have heard about Flutter. This is another cross-platform mobile development framework booming in the market recently. In this post, we will analyze the potential impact of Flutter on native Android development and discuss why we should pay attention to it.

What is Flutter
Just in case you haven’t heard about Flutter, Flutter is an open-source, multi-platform mobile SDK which can be used to build iOS and Android apps with the same source code. Flutter has been around for a long time, but it has started getting more attention since Google I/O 2018 when Google announced release preview of Flutter. At Flutter Live on 4th December 2018, Google announced the first stable version of Flutter with loads of new features. Some big companies like Alibaba are already using it for developing mobile apps.

At the moment, you can think of Flutter as React Native but with the full support of native features. If you’re curious to learn more, check my detailed comparison of Flutter and React Native.

Flutter vs native Android app development
Native Android app development is in an interesting state at the moment. Recently, Google announced Kotlin as the official language over Java. Google is also working on another operating system for both Chrome and mobile which is Fuchsia.

There is no doubt that native Android apps developed with Android Studio are great in features and slick. On the other hand, apps developed with cross-platform solutions can be easily spotted and it feels like there is something missing. However, ever since Flutter apps landed in app stores, there is no way to tell that the apps were built with Flutter. The apps feel so slick, native and smooth. So what is it about Flutter that makes apps feel more or less native?

Quite a few native Android developers have expressed their opinions on Flutter online. One of the articles here explains an Android developer’s view on Flutter. Also, there’s hot discussion on Quora if Flutter is going to replace Java and native Android development. Looking at all these articles, it’s clear that native Android developers cannot ignore Flutter for sure.

Flutter is surely different from the native Android development tools. Flutter’s official documentation has a clear guide on Flutter for Android developers, mapping the concepts of native Android development to Flutter.

Let’s compare Flutter with native Android development using some basic criteria:

Technical architecture
Developer productivity
UI components
Testing support
CI/CD support
Technical architecture
The tech stack used for native Android development and Flutter is completely different.

Although Flutter and Android are being developed at Google, the technical architecture of both platforms is completely different. Flutter uses Dart as the programming language, while native Android development uses Java or Kotlin.

In terms of IDE, Android Studio can be used for both Flutter and native Android app development. However, Flutter apps can also be developed in lightweight editors, like Sublime Text, Atom or VIM, or in an IDE like IntelliJ Idea.

As we know, native apps built with Java/Kotlin are slick and fast as all the components are built natively. Flutter uses the Dart framework and often does not require the bridge to communicate with the native modules. The architecture of the Flutter engine is explained in detail in GitHub Wiki here.

In short, Flutter has everything needed for native app development in the Flutter engine itself. The native Android developer’s guide explains the entire ecosystem of Android app development.

Developer productivity
While developing apps natively, Android engineers need to use Android Studio and the native build and platform tools provided by Android Studio. Android Studio has all the SDK tools embedded within the IDE. These tools also need the emulators or Android Virtual devices to run the apps. Every time developers make changes to the app, they have to rebuild the app or third-party dependencies in some cases to see the changes in the emulator or on devices. As a native Android developer, you might have experienced this slow process as Gradle builds can take time.

In Flutter, there is the hot reload option. When a developer makes any changes, the changes appear in the emulator or devices instantly. However, as the app grows in size, developers need to adopt new techniques to use this feature effectively.

Dependency management for native Android apps is handled by Gradle. There are loads of Java and Kotlin packages available in the market and Gradle can handle them effectively in the Android ecosystem. Flutter uses its own dependency management system called Pub. The Pub Package manager is inbuilt to the Flutter apps, so that it’s easy to get new dependencies as needed for development.

On another note, Dart is not a common programming language and there is a lack of support for it in many IDEs and text editors. It may be a steep learning curve for the developers to learn the new language. While Java has been there for years and Kotlin is a type-safe language, native languages feel much more friendly with Android Studio. There is lots of community support for native languages as well.

UI components
Front-end developers spend most of the time on building the UI.

The native UI components provided by Google to build UI are so powerful and well documented. The UI can be also built using the interface builder in Android Studio. With that feature, UI can be built faster using the native development tools. Android UI docs cover all the basic information needed to build all kinds of user interface elements.

Flutter UI engine is different, Flutter apps run on its rendering engine and its framework. Flutter uses the concept of widgets which can be used to build complex UIs. In short, the Flutter UI is basically a tree of stateless or stateful widgets. There are loads of widgets in the catalog available to build complex UIs which support both Material Components for Android and Cupertino for iOS. The Flutter layout and widgets are pixel perfect as well.

Testing support
Native Android tools have amazing support for testing. Native apps can be tested easily from Android studio itself or from command line using Gradle. You can add unit, integration, instrumented and UI tests for Android apps. There are so many Java and Kotlin frameworks like JUnit available for lower level testing and Espresso is supported for UI testing. There is painless support for mocking things with frameworks like Mockito. Android testing has been extensively covered in documentation, you can refer to the different levels of testing Android apps here.

Flutter provides a solid testing framework which allows developers to write tests at unit, functional and UI level. Widget testing is one cool feature that Flutter provides to run UI tests as fast as unit tests. Flutter has cool documentation on how to test Flutter apps at different levels with example code. Flutter integration tests are similar to Xcode UI tests which go through the UI to perform specific operations. The Flutter integration tests run in a separate process and can be run on real devices or on simulators or emulators. Flutter provides a separate package, Flutter Driver, to drive these tests.

CI/CD support
Continuous integration and continuous delivery practices allow for faster delivery of Android apps.

The process of building and publishing native Android apps is a bit complex outside the IDE. Native android apps have strong support for automation testing, build automation and publishing from Android studio. However, Google hasn’t provided a dedicated CI/CD platform for Android. Native Android developers need to rely on third-party CI servers like Jenkins, TeamCity, or mobile CI services like Travis CI, Circle CI, Nevercode, Bitrise, etc. Luckily, native Android apps can be also built on Linux, so the CI/CD part for Android is easier in comparison with iOS apps. It always requires additional setup to deploy native Android apps using other CI services.

On the other side, the Flutter team at Google partnered with Nevercode and announced Codemagic CI/CD solution just for Flutter apps at Flutter Live, London. Codemagic is a painless CI/CD solution developed at Nevercode which automatically detects, builds, tests and packages the Flutter app with zero configuration. With Codemagic, Flutter apps can be built, tested and deployed to Play store easily.

We have just compared both Google’s native and cross-platform solution for mobile app development, that is, Android and Flutter. However, we can’t conclude which is the best as it totally depends on the project, company, budget and context.

Can Flutter dominate over native Android development?
Flutter is full of feature sets, but it’s definitely not perfect yet. There are some important features lacking in Flutter, like OpenGL, Maps, Video support and Accessibility support. Flutter also lacks some packages required for development. There is no support for editing the layout like with interface builder. There might be some other features missing as well. In comparison with the number of native developers, Flutter community is rather small.

Flutter has just released its first stable releases. Google engineers announced Flutter 1.2 at the Mobile World Congress Conference. They have a strong vision and roadmap. Flutter is also being developed with Fuchsia in mind. We can’t predict the future, but Flutter has potential to cross all the boundaries.

All in all, Flutter is an option for businesses to develop native’ish iOS and Android apps with the same source code and with fewer resources. As of now, there are so many cross-platform mobile app development frameworks that have come and gone, so native app development remains a solid choice for developing mobile apps.

Flutter seems to be totally different from all the other cross-platform solutions. Futter apps look native and slick just like the native apps.

As an Android developer, you shouldn’t ignore Flutter. We can’t predict the future, but who knows, Flutter might just as well be the first choice for businesses to develop Android apps. There are some potential reasons for that.

Rise of Fuchsia
This is no longer a secret that Google is working on another operating system which is known as Fuchsia. Flutter is being developed with Fuchsia in mind, so there might be a possibility that Fuchsia will replace both Chrome and Android in the future, read more about this scenario in this article. That’s some food for thought for native Android developers.

Growing migration rate & Flutter in existing apps
Some of the articles online indicate that companies have already started porting their native apps to Flutter. For example, there’s a good article about porting a 75-000 line native iOS app to Flutter if you want to read about the process of migration. Some of the teams are using Flutter in their existing Android apps, while others completely migrate apps to Flutter. It’s clear that Flutter is changing the view on cross-platform mobile app development because of ease of development, testing and releasing the mobile apps.

Google’s take on Android
It’s also important to see Google’s take on maintaining both a native and a cross-platform mobile development framework. We should definitely keep an eye on the announcements at the next Google I/O conference.

Confusion about native Android development
There’s a lot of confusion among the developers about why native Android development is so complicated, confusing and less performant. This article clearly shows this confusion among proficient developers. Considering the number of users and the revenue that companies earn from Android apps, it’s too complex and hard to maintain. Flutter can be the solution to this problem as it can be used to also build apps for iOS and potentially for Fuchsia in the future.

Prediction on cross-platform development
Cross-platform development is expected to reach its height in the coming years. Some experts have already predicted that Flutter will be the future of mobile app development. Whether to pay attention to Flutter or not is a personal choice, but it’s safe to say that Flutter has entered the cross-platform app development race very strongly and it’s here to stay for long term.

Conclusion
Flutter is hot in the market ever since Google announced the first stable release. Looking at the features of Flutter, lots of questions arise.

Will companies go for Flutter as the first choice of developing apps?

Is it the beginning of the end of native Android app development?

Will Dart replace Java and Kotlin?

Should native Android developers start learning Dart?

We’ll make no predictions or guesses here, but it could be the alarming bell for native mobile app developers that something like Flutter might affect their role in the future.

Love Flutter or hate Flutter, you cannot ignore it anymore.   
                """,
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              //Main Image
              mainImageWidget(height),
              Container(
                //Bottom Sheet Dimensions
                margin: EdgeInsets.only(top: height / 2.3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: bottomContent(height, width),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
