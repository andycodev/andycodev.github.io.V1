<template>
  <v-container class="mt-5">
    <v-row class="mt-5 text-center" justify="center">
      <v-col cols="12" md="8" class="mb-4">
        <h2 class="display-1 text-center mb-5">Habilidades 💪</h2>

        <v-chip
          v-for="skill in skills"
          :key="skill"
          class="ma-3"
          color="indigo lighten-5"
          large
          text-color="grey darken-4"
        >
          <v-icon left>mdi-check</v-icon>

          {{ skill }}
        </v-chip>

        <template> </template>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  name: "SkillsComponent",
  data: () => ({
    skills: [
      "HTML",
      "CSS",
      "JAVASCRIPT",
      "GIT",
      "GITHUB",
      "GITLAB",
      "VUE",
      "VUETIFY",
      "ANGULAR",
      "NEBULAR",
      "BOOTSTRAP",
      "TAILWIND CSS",
      "PHP",
      "LARAVEL",
      "MYSQL",
      "ORACLE",
    ],
  }),
};
</script>

<style lang="scss" scoped></style>
