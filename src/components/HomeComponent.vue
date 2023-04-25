<template>
  <v-container class="mt-5">
    <v-row class="text-center mt-5" justify="center">
      <v-col cols="12 mt-3" left md="3">
        <v-avatar color="indigo lighten-5" size="200" >
          <v-img :src="require('../assets/perfil-andycodev.jpg')" class="my-3 mt-5" position />
        </v-avatar>
      </v-col>

      <v-col cols="12" md="5" class="mb-4">
        <h1 class="display-2 font-weight-bold mb-3">Hola👋, Soy Andy</h1>
        <center>
          <h2 class="efect-write">Desarrollador Fullstack</h2>
        </center>
        <p class="mt-3">
          <!-- Egresado de la carrera de Ingeniería de Sistemas de la Universidad
          Peruana Unión - Lima. Enfocado al desarrollo web. -->
          Analista Desarrollador en la Universidad Peruana Unión - Lima.
          Enfocado en el desarrollo web, a la resolución de problemas y acostumbrado a trabajar en equipo.
        </p>
        <v-menu offset-y>
          <template v-slot:activator="{ on, attrs }">
            <v-btn color="indigo lighten-1" dark v-bind="attrs" v-on="on"  @click="show = !show">
              Currículum <v-icon>{{ show ? 'mdi-chevron-up' : 'mdi-chevron-down' }}</v-icon>
            </v-btn>
          </template>
          <v-list>
            <v-list-item v-for="(item, index) in items" :key="index" class="text-center">
              <v-list-item-title class="cursor" @click="opcionesCurriculum(item.value)">{{
                  item.title
              }}  <v-icon size="medium">{{item.icon}}</v-icon></v-list-item-title>
             
            </v-list-item>
          </v-list>
        </v-menu>
        <!-- <v-btn @click="descargarCurriculum()" class="mr-3" elevation="2" large>Currículum <v-icon color="grey darken-1">mdi-download</v-icon></v-btn> -->
        <!-- <v-btn @click="openPage()" elevation="2" large
          >Linkedin <v-icon color="grey darken-1">mdi-linkedin</v-icon></v-btn
        > -->
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  name: 'HomeComponent',

  data: () => ({
    items: [{ title: "Visualizar", value: 'v', icon: 'mdi-eye' }, { title: "Descargar", value: 'd', icon: 'mdi-download' }],
    show: false,
    linkBaseCurriculumGitHUB: 'https://github.com/andycodev/curriculum-vitae/',
    nombreCurriculum: 'CV_AndyGiampierreOrdo%C3%B1ezVega.pdf'
  }),

  methods: {
    /* openPage() {
      window.open(
        "https://www.linkedin.com/in/andygiampierreordonezvega/",
        "_blank"
      );
    },
 */
    descargarCurriculum() {
      window.open(
        `${this.linkBaseCurriculumGitHUB}raw/main/${this.nombreCurriculum}`,
        "_self"
      );
    },

    visualizarCurriculum() {
      window.open(
        `${this.linkBaseCurriculumGitHUB}blob/main/${this.nombreCurriculum}`,
        "_blank"
      );
    },

    opcionesCurriculum(value) {
      if(value === 'v') this.visualizarCurriculum();
      if(value === 'd') this.descargarCurriculum();
    },
  },
};
</script>

<style scoped>
.efect-write {
  display: block;
  white-space: nowrap;
  border-right: 4px solid;
  width: 22ch;
  color: #2b649d;

  animation: typing 2s steps(22), blink 0.5s infinite step-end alternate;
  overflow: hidden;
}

@keyframes typing {
  from {
    width: 0;
  }
}

@keyframes blink {
  50% {
    border-color: transparent;
  }
}

.cursor {
  cursor: pointer;
}
</style>
