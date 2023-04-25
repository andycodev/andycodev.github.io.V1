<template>
  <v-container class="mt-5">
    <v-row class="mt-5" justify="center">
      <v-col cols="12" md="8" class="mb-4">
        <h2 class="display-1 text-center mb-5">Contacto 📲</h2>
        <v-textarea
          autocomplete="mensaje"
          @keyup="messageWhatsapp(message)"
          v-model="message"
          label="Mensaje"
          placeholder="Por favor escrbir al menos cuatro caracteres."
        ></v-textarea>
        <v-btn elevation="2" v-if="visualizeButton"  @click="sendMessageWhatsapp()">
          Enviar mensaje <v-icon class="ml-2" small>mdi-whatsapp</v-icon> </v-btn
        >
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  name: 'ConatactComponent',
  data: () => ({
    message: "",
    apiWhatsapp: "",
  }),

  mounted() {},

  methods: {
    messageWhatsapp(message) {
      this.apiWhatsapp = `https://api.whatsapp.com/send?phone=+51999968702&text=${message}`;
    },

    sendMessageWhatsapp() {
      window.open(this.apiWhatsapp, "_blank");
      this.message = "";
    },
  },

  computed: {
    // eslint-disable-next-line vue/return-in-computed-property
    visualizeButton: function () {
      return this.message.length >= 4 ? true : false;
    },
  },
};
</script>

<style scoped>
.card-mh {
  min-height: 200px !important;
}
</style>
