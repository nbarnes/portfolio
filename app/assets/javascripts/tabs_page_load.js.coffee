$ ->

  $('.static.welcome').ready ->
    select_tab( 'welcome' )
  $('.projects.show').ready ->
    select_tab( 'projects' )
  $('.posts.index').ready ->
    select_tab( 'blog' )
  $('.static.about_me').ready ->
    select_tab( 'about_me' )

  $('.posts.show').ready ->
    select_tab( 'blog' )
  $('.posts.admin').ready ->
    select_tab( 'posts_admin' )
  $('.posts.new').ready ->
    select_tab( 'posts_new' )

  $('.projects.index').ready ->
    select_tab( 'projects' )
  $('.projects.show').ready ->
    select_tab( 'projects' )
  $('.projects.admin').ready ->
    select_tab( 'projects_admin' )
  $('.projects.new').ready ->
    select_tab( 'projects_new' )

  $('.sessions.new').ready ->
    select_tab( 'log_in' )
