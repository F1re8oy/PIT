import { createRouter, createWebHistory } from 'vue-router'
import login from '../views/login.vue'

const routes = [
  {
    path: '/views/login',
    name: 'Login',
    component: login
  },
  // Citas maršruti vai lapas
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
