<template>
  <ion-app>
    <ion-content>
      <ion-header>
        <ion-toolbar>
          <ion-title>
            <h1 color="black">Post</h1>
          </ion-title>
        </ion-toolbar>
      </ion-header>

      <br>

      <ion-card v-for="post in post" :key="post.post_id">
        <ion-card-header>
          <ion-item>
            <ion-avatar slot="start">
              <img
                src="https://gravatar.com/avatar/dba6bae8c566f9d4041fb9cd9ada7741?d=identicon&f=y"
              >
            </ion-avatar>
            <ion-label>{{ post.title }}</ion-label>
          </ion-item>
        </ion-card-header>

        <ion-card-content>
          <img class="full-image" :src="post.image">

          <br>

          <ion-button class="primary" shape="round" size="default" @click="goBack">Go Back</ion-button>
        </ion-card-content>
      </ion-card>
    </ion-content>
  </ion-app>
</template>

<script>
import axios from "axios";

export default {
  name: "show",
  data() {
    return {
      post: {}
    };
  },
  mounted() {
    axios
      .all([
        axios.get("http://localhost:3000/posts/show/" + this.$route.params.id)
      ])
      .then(
        axios.spread(postRes => {
          this.post = postRes.data;
        })
      );
  },
  methods: {
    goBack() {
      this.$router.push("/posts");
    }
  }
};
</script>
