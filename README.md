# embedded-flutter-app

A demonstration of using an embedded Flutter web app with multi-view support inside a Vue app.

## Project setup

From the root directory, install all the Node.js dependencies:

```
npm install
```

Then, navigate to the `flutter_app` directory and install all the pub.dev dependencies:

```
flutter pub get
```

## Development

From the root of the project, run the Vue development server:

```
npm run serve
```

Whenever you make changes to the Flutter app, run the build script:

```
./bin/build.sh
```

This will run `flutter build web` and copy all necessary files into the `public` directory of the Vue app.
Unfortunately, there is no way to run a development version of the Flutter app within Vue, so there is no debugging or hot reloading.

There is an open issue to support these features: [GH: flutter/issues](https://github.com/dart-lang/sdk/issues/60776)
