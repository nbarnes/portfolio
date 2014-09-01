$ ->

  $('#welcome_tab').click ->
    select_tab('welcome')
    set_URL('welcome')

  $('#projects_tab').click ->
    select_tab('projects')
    set_URL('projects')

  $('#blog_tab').click ->
    select_tab('blog')
    set_URL('blog')

  $('#about_me_tab').click ->
    select_tab('about_me')
    set_URL('about_me')

  set_URL = (tab_name) ->
    window.history.pushState(tab_name + '_tab', '', '/' + tab_name)