import Vue from "vue";
import './plugins/axios'
import App from "./App.vue";

import Ionic from "@ionic/vue";
import "@ionic/core/css/core.css";
import "@ionic/core/css/ionic.bundle.css";

Vue.config.productionTip = false;

import { IonicVueRouter } from "@ionic/vue";
Vue.use(IonicVueRouter);
Vue.use(Ionic);

const router = new IonicVueRouter({
  mode: "history",
  routes: [
    { path: "/", redirect: "/posts" },

    {
      path: "/home",
      name: "home",
      component: () =>
        import("@/components/HelloWorld.vue"),
      children: [
        {
          path: "/register",
          name: "register",
          components: {
            register: () =>
              import("@/components/Register.vue")
          }
        },
        {
          path: "/login",
          name: "login",
          components: {
            login: () =>
              import("@/components/Login.vue")
          }
        },
        {
          path: "/posts",
          name: "posts",
          components: {
            posts: () =>
              import("@/components/Posts.vue")
          }
        },
        {
          path: "/show/:id",
          name: "show",
          components: {
            show: () =>
              import("@/components/Show.vue")
          }
        }
      ]
    }
  ]
});
new Vue({
  router,
  render: h => h(App)
}).$mount("#app");
