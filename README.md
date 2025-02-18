# twapp s application1

### Table of contents

[System requirements](#system-requirements)

[Figma design guidelines for better UI accuracy](#figma-design-guideline-for-better-accuracy)

[Check the UI of the entire app] (#app-navigations)

[Application structure] (#project-structure)

[How to format your code?] (#how-you-can-do-code-formatting)

[How you can improve code readability?] (#how-you-can-improve-the-readability-of-code)

[Libraries and tools used) (#libraries-and-tools-used)

[Support] (#support)

[How to Push Code to GitHub](#how-to-push-code-to-github)

### System requirements

Dart SDK Version 3.4.0 or greater.

Flutter SDK Version 3.22.0 or greater.


### Check the UI of the entire app

Check the UI of all the app screens from a single place by setting up the 'initialRoute' to AppNavigation in the AppRoutes.dart file.

### Application structure

After successful build, your application structure should look like this:

|--android
|--assets
|--ios
|--lib
   |--main.dart
   |--core
       |--app_export.dart
       |--constants
       |--utils
   |--presentation
   |--routes
   |--theme
   |--widgets

It contains files required to run the application on an Android platform.

It contains all images and fonts of your application.

It contains files required to run the application on an ios platform.

Most important folder in the application, used to write most of the Dart code..

Starting point of the application

It contains commonly used file imports

It contains static constant class file

It contains common files and utilities of the application

It contains widgets of the screens

It contains all the routes of the application

It contains app theme and decoration classes

It contains all custom widget classes

### How to format your code?

if your code is not formatted then run following command in your terminal to format code

dart format.

### How you can improve code readability?

Resolve the errors and warnings that are shown in the application.

### Libraries and tools used

BLOC State management

https://bloclibrary.dev

cached_network_image - For storing internet image into cache

https://pub.dev/packages/cached_network_image

### Support

If you have any problems or questions, go to our Discord channel, where we will help you as quickly as possible: https://discord.com/im

### How to Push Code to GitHub

1. **Initialize a Git repository** (if you haven't already):
   ```sh
   git init
   ```

2. **Add your files to the staging area**:
   ```sh
   git add .
   ```

3. **Commit your changes**:
   ```sh
   git commit -m "Your commit message"
   ```

4. **Add the remote repository** (if you haven't already):
   ```sh
   git remote add origin https://github.com/yourusername/your-repo.git
   ```

5. **Push your changes to the remote repository**:
   ```sh
   git push -u origin main
   ```

Replace `https://github.com/yourusername/your-repo.git` with the URL of your GitHub repository and `main` with the branch name you want to push to.