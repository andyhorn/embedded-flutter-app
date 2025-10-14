{{flutter_js}}

{{flutter_build_config}}

var flutterApp;

_flutter.loader.load({
    onEntrypointLoaded: async (engineInitializer) => {
        const engine = await engineInitializer.initializeEngine({
            multiViewEnabled: true,
        });

        // Run the app and store a reference in the global flutterApp variable.
        flutterApp = await engine.runApp();
    },
});