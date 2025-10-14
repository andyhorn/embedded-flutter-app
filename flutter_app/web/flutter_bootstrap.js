{{flutter_js}}

{{flutter_build_config}}

_flutter.loader.load({
    onEntrypointLoaded: async (engineInitializer) => {
        const engine = await engineInitializer.initializeEngine({
            multiViewEnabled: true,
        });

        // Run the app and store a reference in the flutterApp variable.
        const flutterApp = await engine.runApp();
    },
});