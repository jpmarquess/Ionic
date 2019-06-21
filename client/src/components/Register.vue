<template>
  <ion-app>
    <ion-content>
      <ion-header>
        <ion-toolbar>
          <ion-title>
            <h1 color="black">Register</h1>
          </ion-title>
        </ion-toolbar>
      </ion-header>

      <br>
      <br>
      <br>

      <div style="width: 80%; text-align: center; margin: 0 auto;">
        <ion-item>
          <ion-label position="stacked" style="font-size: 1.4em;">Username</ion-label>
          <ion-input type="text" id="input_username" required></ion-input>
        </ion-item>

        <ion-item>
          <ion-label position="stacked" style="font-size: 1.4em;">Password</ion-label>
          <ion-input type="password" id="input_password" required></ion-input>
        </ion-item>

        <br>
        <br>

        <ion-button size="default" color="primary" @click="addUser">Login</ion-button>
      </div>
    </ion-content>
  </ion-app>
</template>

<script>
import axios from "axios";

export default {
  name: "Signup",
  methods: {
    addUser() {
      var username = document.getElementById("input_username").value;
      var password = document.getElementById("input_password").value;

      if (username.length == 0 && password.length == 0) {
        alert("Username and password fields are empty.");
      } else if (username.length == 0) {
        alert("Username field is empty.");
      } else if (password.length == 0) {
        alert("Password field is empty.");
      } else {
        let newUser = {
          username: username,
          password: password
        };

        axios
          .post("http://localhost:3000/posts/signup", newUser)
          .then(response => {
            console.log(response);
          })
          .catch(error => {
            console.log(error);
          });
        
        alert("Conta criada com sucesso !");
      }
    }
  }
};
</script>