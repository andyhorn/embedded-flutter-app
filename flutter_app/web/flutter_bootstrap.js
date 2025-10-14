{{flutter_js}}

{{flutter_build_config}}

_flutter.loader.load({
    onEntrypointLoaded: async (engineInitializer) => {
        console.log('initializing engine')
        let engine = await engineInitializer.initializeEngine({
            multiViewEnabled: true,
        });

        console.log('running app')
        let app = await engine.runApp().then((app) => {
            console.log('app running')

            let element = document.querySelectorAll('flutter_container');

            if (!element) {
                throw 'Could not find element with id "flutter_container"';
            }

            let view = app.addView({
                hostElement: element,
            });

            console.log('view added to page');
            return app;
        });

    },
});