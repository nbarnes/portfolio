$ ->

  $('.static.welcome').ready ->
    select_tab( 'welcome' )
  $('.static.projects').ready ->
    select_tab( 'projects' )
  $('.static.blog').ready ->
    select_tab( 'blog' )
  $('.static.about_me').ready ->
    select_tab( 'about_me' )

  $('.sessions.new')