$ ->

  $('.front_page.welcome').ready ->
    select_tab( 'welcome' )
  $('.front_page.projects').ready ->
    select_tab( 'projects' )
  $('.front_page.blog').ready ->
    select_tab( 'blog' )
  $('.front_page.about_me').ready ->
    select_tab( 'about_me' )

  $('.posts.show').ready ->
    select_tab( 'blog' )
  $('.posts.admin').ready ->
    select_tab( 'posts_admin' )

  $('.projects.show').ready ->
    select_tab( 'projects' )
  $('.projects.admin').ready ->
    select_tab( 'projects_admin' )

  $('.sessions.new').ready ->
    select_tab( 'login' )
