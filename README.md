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

Then, launch the Flutter app using the following command OR the launch config:

```
flutter run \
-d chrome \
--web-port 5000 \
--web-header "Access-Control-Allow-Origin=http://localhost:8080" \
--web-header "Access-Control-Allow-Credentials=true" \
--web-launch-url="http://localhost:8080"
```
