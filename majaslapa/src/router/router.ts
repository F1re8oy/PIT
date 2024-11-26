import { createRouter, createWebHistory } from "vue-router";
import Home from "../views/home.vue";
import Login from "../views/login.vue";
import AboutUsPage from "../views/AboutUsPage.vue";
import favorites from "../views/favorites.vue";
import CarDetail from "../views/CarDetail.vue";
import CarMark from "../views/CarMark.vue";

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
  {
    path: "/car/:marka",
    name: "CarDetail",
    component: CarDetail,
    props: true,
  },
  {
  path: "/car/:marka/marks",
  name: "CarMark",
  component: CarMark,
  props: true,
},
];

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes,
});

export default router;
