{{flutter_js}}

{{flutter_build_config}}

let flutterApp;

const loadFlutterApp = (appUrl) => {
    _flutter.loader.load({
        config: {
            entrypointBaseUrl: appUrl,
            canvasKitBaseUrl: `${appUrl}/canvaskit/`,
        },
        onEntrypointLoaded: async (engineInitializer) => {
            const engine = await engineInitializer.initializeEngine({
                assetBase: `${appUrl}/`,
                multiViewEnabled: true,
            });

            // Run the app and store a reference in the global flutterApp variable.
            window.flutterApp = flutterApp = await engine.runApp();
        }
    });
};

window.addView = (hostElement, data) => {
    const viewId = flutterApp.addView({
        hostElement: hostElement,
        initialData: data
    });

    return viewId;
}

window.removeView = (viewId) => {
    flutterApp.removeView(viewId);
}