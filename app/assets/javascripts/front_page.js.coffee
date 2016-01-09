
$ ->

  $('#welcome_tab').click ->
    select_tab('welcome')
    set_URL('welcome', $('#welcome_tab').data('url'))

  $('#projects_tab').click ->
    select_tab('projects')
    set_URL('projects', $('#projects_tab').data('url'))

  $('#blog_tab').click ->
    select_tab('blog')
    set_URL('blog', $('#blog_tab').data('url'))

  $('#about_me_tab').click ->
    select_tab('about_me')
    set_URL('about_me', $('#about_me_tab').data('url'))

  set_URL = (tab_name, data_url) ->
    if (typeof data_url == 'undefined')
      window.history.pushState(tab_name + '_tab', '', '/' + tab_name)
    else
      window.history.pushState(data_url, '', data_url)
