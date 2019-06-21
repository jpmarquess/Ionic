<template>
  <ion-app>
    <ion-content>
      <ion-header>
        <ion-toolbar>
          <ion-title>
            <h1 color="black">Login</h1>
          </ion-title>
        </ion-toolbar>
      </ion-header>

      <br>
      <br>
      <br>

      <div style="width: 80%; text-align: center; margin: 0 auto;">
        <ion-item>
          <ion-label position="stacked" style="font-size: 1.4em;">Username</ion-label>
          <ion-input type="text"></ion-input>
        </ion-item>

        <ion-item>
          <ion-label position="stacked" style="font-size: 1.4em;">Password</ion-label>
          <ion-input type="password"></ion-input>
        </ion-item>

        <br>
        <br>

        <ion-button size="default" color="primary">Login</ion-button>
      </div>
    </ion-content>
  </ion-app>
</template>