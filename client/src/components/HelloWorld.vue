<template>
  <div>
    <ion-tabs>
      <ion-tab tab="/posts">
        <ion-vue-router name="posts"></ion-vue-router>
      </ion-tab>

      <ion-tab tab="/register">
        <ion-vue-router name="register"></ion-vue-router>
      </ion-tab>

      <ion-tab tab="/login">
        <ion-vue-router name="login"></ion-vue-router>
      </ion-tab>

      <ion-tab tab="/show">
        <ion-vue-router name="show"></ion-vue-router>
      </ion-tab>

      <ion-tab-bar slot="bottom">
        <ion-tab-button tab="/posts">
          <ion-icon name="home"/>
          <ion-label>Posts</ion-label>
        </ion-tab-button>

        <ion-tab-button tab="/login">
          <ion-icon name="person"/>
          <ion-label>Login</ion-label>
        </ion-tab-button>

        <ion-tab-button tab="/register">
          <ion-icon name="lock"/>
          <ion-label>Register</ion-label>
        </ion-tab-button>
      </ion-tab-bar>
    </ion-tabs>
  </div>
</template>

<script>
export default {
  
}
</script>
