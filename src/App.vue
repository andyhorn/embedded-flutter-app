<template>
  <div id="button_container">
    <button @click="onAddFlutterApp()">Add Flutter App</button>
  </div>
  <img alt="Vue logo" src="./assets/logo.png">
  <HelloWorld msg="Welcome to Your Vue.js App"/>
  <div id="flutter_apps_container">
    <!-- Flutter apps will be added here -->
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'

export default {
  name: 'App',
  components: {
    HelloWorld
  },
  methods: {
    onAddFlutterApp() {
      let element = document.createElement('div');
      element.className = 'flutter_container';

      document.getElementById('flutter_apps_container').appendChild(element);

      window.addView(element, {
        randomValue: Math.floor(Math.random() * 100)
      });
    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

#flutter_apps_container {
  display: flex;
  flex-direction: row;
  column-gap: 8px;
}

.flutter_container {
  width: 200px;
  height: 400px;
  border: 1px solid black;
}

.flutter_container flutter-view {
  display: flex !important;
}
</style>
