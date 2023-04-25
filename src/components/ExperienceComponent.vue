<template>
  <v-container class="mt-5">
    <v-row class="mt-5" justify="center">
      <v-col cols="12" md="8" class="mb-4">
        <h2 class="display-1 text-center">Experiencia 📝</h2>

        <v-switch @click="reverseExperience()" label="Revertir"></v-switch>
        <v-timeline  :dense="$vuetify.breakpoint.smAndDown">
          <v-timeline-item
            v-for="experience in experiences"
            :key="experience.id"
          >
            <span slot="opposite">{{ experience.date }}</span>
            <v-card class="elevation-2">
              <v-card-title class="text-h6">
                {{ experience.entity }}
              </v-card-title>
              <v-card-text>
                {{ experience.description }}
              </v-card-text>
            </v-card>
          </v-timeline-item>
        </v-timeline>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  name: 'ExperienceComponent',
  data: () => ({
    experiences: [
      {
        id: 1,
        img: "/template/images/programador.svg",
        rol: "Programador",
        entity: "Clínica Good Hope",
        date: "(FEB 2018 - JUN 2018)",
        description:
          "Comprender las necesidades de los usuarios y brindar soporte de los módulos requeridos. Desarrollar requerimientos específicos",
      },
      {
        id: 2,
        img: "/template/images/analista-programador-1.svg",
        rol: "Analista Desarrollador",
        entity: "Clínica Good Hope",
        date: "(JUL 2018 - ABR 2020)",
        description:
          "Gestionar requerimientos de los usuarios, diseñar y crear nuevos programas. Desarrollar modificaciones y mejoras en programas existentes, etc.",
      },
      {
        id: 3,
        img: "/template/images/analista-progrmador-2.svg",
        rol: "Analista Desarrollador",
        entity: "Universidad Peruana Unión",
        date: "(MAY 2020 - ACTUAL)",
        description:
          "Desarrollar junto con el equipo las nuevas funcionalidades y actualizaciones del LMS de la universidad. Desarrollar requerimientos y migraciones de módulos financieros.",
      },
    ],
  }),

  methods: {
    reverseExperience(){
      this.experiences.reverse();
    }
  }
};
</script>

<style lang="scss" scoped>
</style>