<template>
  <v-app>
    <template v-if="loading">
      <v-app-bar color="indigo lighten-1" elevation="2" dense fixed dark rounded="b-lg">
        <v-toolbar-title> andycodev</v-toolbar-title>

        <v-spacer></v-spacer>

        <v-btn v-for="redSocial in redesSociales" :key="redSocial.id" @click="openPage(redSocial.url)" icon>
          <v-icon>{{redSocial.icon}}</v-icon>
        </v-btn>
      </v-app-bar>

      <v-main class="mt-5" transition="fade-transition">
          <HomeComponent />
          <ExperienceComponent />
          <SkillsComponent />
          <ProjectsComponent />
          <RepositoriesComponent/>
          <ContactComponent/>
          <FooterComponent />
      </v-main>
    </template>
    <v-container v-else style="height: 800px" transition="fade-transition">
      <v-row class="fill-height" align-content="center" justify="center">
        <v-col class="text-subtitle-1 text-center" cols="12">
          <h2>andycodev</h2>
        </v-col>
        <v-col cols="4">
          <v-progress-linear
            color="indigo ligthen-2"
            indeterminate
            rounded
            height="6"
          ></v-progress-linear>
        </v-col>
      </v-row>
    </v-container>
  </v-app>
</template>

<script>
import HomeComponent from "./components/HomeComponent";
import ExperienceComponent from "./components/ExperienceComponent";
import SkillsComponent from "./components/SkillsComponent";
import ProjectsComponent from "./components/ProjectsComponent";
import FooterComponent from "./components/FooterComponent";
import RepositoriesComponent from "./components/RepositoriesComponent";
import ContactComponent from "./components/ContactComponent"

export default {

  name: "App",

  components: {
    HomeComponent,
    ExperienceComponent,
    SkillsComponent,
    ProjectsComponent,
    FooterComponent,
    RepositoriesComponent,
    ContactComponent
  },

  data: () => ({

    loading: false,
    expand: false,

    redesSociales: [
      {
        id: 1,
        name: "Github",
        url: "https://github.com/andycodev",
        icon: 'mdi-github'
      },
      {
        id: 2,
        name: "Linkedin",
        url: "https://www.linkedin.com/in/andygiampierreordonezvega/",
        icon: 'mdi-linkedin'
      },
      {
        id: 3,
        name: "Twitter",
        url: "https://twitter.com/andycodev",
        icon: 'mdi-twitter'
      },
      {
        id: 4,
        name: "Instagram",
        url: "https://www.instagram.com/andygiampierre/",
        icon: 'mdi-instagram'
      },
      {
        id: 5,
        name: "Facebook",
        url: "https://www.facebook.com/agov10/",
        icon: 'mdi-facebook'
      },
    ],
  }),

  mounted() {
    this.cargarContenido();
  },

  methods: {
    cargarContenido() {
      this.expand = true;
      setTimeout(() => {
        this.loading = true;
      }, 1000);
    },

    openPage(url){
      window.open(`${url}`, '_blank');
    }
  },
};
</script>
<style>
* {
  font-family: Arial, Helvetica, sans-serif;
}


</style>
