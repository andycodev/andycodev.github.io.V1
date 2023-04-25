<template>
    <v-card flat tile>
        <h2 class="display-1 text-center mt-5 mb-5">Proyectos 🏆</h2>
        <v-container v-for="type in types" :key="type.id" class="lighten-4">
            <v-subheader class="grey--text">{{ type.name }}</v-subheader>

            <v-row justufy="center">
                <v-spacer></v-spacer>
                <v-col v-for="project in projects" :key="project.id" cols="12" sm="6" md="4">
                    <!-- <v-card-header>
                        <p class="title indigo--text">{{ project.name }}</p>
                    </v-card-header> -->
                    <v-card v-if="type.slug === project.type">
                        <div class="indigo lighten-2 text-center">
                            <span class="text-h7 white--text pa-1 d-inline-block mb-1" v-text="project.name"></span>
                        </div>
                        <v-img :src="project.img" height="250px" contain>
                        </v-img>

                        <v-card-actions class="white justify-center">
                            <v-btn @click="visualizarRepositorie(project.github)" color="indigo" class="white--text" fab
                                icon small>
                                <v-icon>mdi-github</v-icon>
                            </v-btn>
                            <v-btn @click="visualizarProject(project.web)" :disabled="!project.web"
                                color="red lighten-3" class="white--text" fab icon small>
                                <v-icon>mdi-web</v-icon>
                            </v-btn>
                        </v-card-actions>
                    </v-card>
                </v-col>
            </v-row>
        </v-container>
    </v-card>
</template>

<script>
export default {
    name: "ProjectsComponent",
    data: () => ({
        types: [
            {
                id: 1,
                name: "Últimos proyectos",
                slug: "UP",
            },
            /* {
                    id: 2,
                    name: "Más proyectos",
                    slug: "MP",
                  }, */
        ],
        projects: [
            {
                id: 1,
                name: "Microframework tailwind css",
                type: "UP",
                img: require(`../assets/img-projects/tailwindcss.png`),
                github: "https://github.com/andycodev/tailwindcss",
                web: "https://andycodev.github.io/tailwindcss/",
            },
            {
                id: 2,
                name: "CRUD Angular y Firebase",
                type: "UP",
                img: require(`../assets/img-projects/crud-angular-firebase.png`),
                github: "https://github.com/andycodev/ng-app-courses",
                web: "https://ng-app-courses.web.app",
            },
            {
                id: 3,
                name: "CRUD Angular y Laravel",
                type: "UP",
                img: require(`../assets/img-projects/crud-angular-laravel.png`),
                github: "https://github.com/andycodev/crud-laravel-angular",
                web: "",
            },
            
            /* {
                    id: 4,
                    name: "Vue",
                    type: "MP",
                  },
                  {
                    id: 5,
                    name: "Vite",
                    type: "MP",
                  },
                  {
                    id: 6,
                    name: "JS",
                    type: "MP",
                  }, */
        ],
    }),

    mounted() { },

    methods: {
        visualizarRepositorie(repositorie) {
            if (repositorie)
                window.open(
                    repositorie, "_blank"
                );
        },

        visualizarProject(web) {
            if (web)
                window.open(
                    web, "_blank"
                );
        },
    },
};
</script>

<style scoped>
</style>
