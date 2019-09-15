import Vue from 'vue'
import Router from 'vue-router'
import groupExample from './group/groupExample.coffee'

Vue.use(Router)

mainRoutes = [
    path: '/'
    component: require('../pages/contacts/contacts.vue').default
    name: 'contacts'
  ,
    path: '/example'
    component: require('../pages/example/example.vue').default
    name: 'example'
]

routes = _.concat mainRoutes, groupExample

export default new Router
  mode: 'history',
  base: process.env.BASE_URL,
  routes: routes
