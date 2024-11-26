import { createRouter, createWebHistory } from "vue-router";
import Home from "../views/home.vue";
import Login from "../views/login.vue";
import AboutUsPage from "../views/AboutUsPage.vue";
import favorites from "../views/favorites.vue";

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/views/login",
    name: "Login",
    component: Login,
  },
  {
    path: "/views/AboutUsPage",
    name: "AboutUsPage",
    component: AboutUsPage,
  },
  {
    path: "/views/favorites",
    name: "favorites",
    component: favorites,
  },
];

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes,
});

export default router;
