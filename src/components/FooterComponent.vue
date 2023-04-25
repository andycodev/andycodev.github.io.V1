<template>
  <v-footer color="grey lighten-2" class="mt-5" light padless>
    <v-row justify="center" no-gutters>
      <v-btn
        v-for="redSocial in redesSociales"
        :key="redSocial.id"
        color="secondary"
        text
        rounded
        class="my-2"
        @click="openPage(redSocial.url)"
      >
        {{ redSocial.name }}
      </v-btn>
      <v-col class="indigo lighten-2 py-4 text-center white--text" cols="12">
        {{ new Date().getFullYear() }} — <strong>andycodev 👨‍💻</strong>
      </v-col>
    </v-row>
  </v-footer>
</template>

<script>
export default {
  name: 'FooterComponent',
  data: () => ({
    redesSociales: [
      {
        id: 1,
        name: "Github",
        url: "https://github.com/andycodev",
      },
      {
        id: 2,
        name: "Linkedin",
        url: "https://www.linkedin.com/in/andygiampierreordonezvega/",
      },
      {
        id: 3,
        name: "Twitter",
        url: "https://twitter.com/andycodev",
      },
      {
        id: 4,
        name: "Instagram",
        url: "https://www.instagram.com/andygiampierre/",
      },
      // {
      //   id: 5,
      //   name: "Facebook",
      //   url: "https://www.facebook.com/agov10/",
      // },
    ],
  }),

  methods: {
    openPage(url) {
        window.open(`${url}`, "_blank");
    },
  },
};
</script>

<style lang="scss" scoped>
</style>