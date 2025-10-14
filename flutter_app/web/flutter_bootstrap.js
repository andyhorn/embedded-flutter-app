// This file is added directly to the Flutter web project and will 
// be included in the final build output.
//
// It provides a template for the bootstrap JavaScript code that initializes
// the Flutter web application.
//
// The placeholders {{flutter_js}} and {{flutter_build_config}} will be
// replaced with the actual content during the build process.

{{flutter_js}}

{{flutter_build_config}}

_flutter.loader.load({
    config: {
        hostElement: document.getElementById('flutter_container'),
    }
})