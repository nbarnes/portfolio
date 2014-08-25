$ ->

  window['tabs#projects'] = (data) ->
    alert('start of projects')

  window['tabs#blog'] = (data) ->
    alert('start of blog')

  $('#welcome_tab').click ->
    select_tab('welcome')
    $('#tabbed_content_pane').removeClass('upper_right_rounded_corner')

  $('#projects_tab').click ->
    select_tab('projects')
    $('#tabbed_content_pane').addClass('upper_right_rounded_corner')

  $('#blog_tab').click ->
    select_tab('blog')
    $('#tabbed_content_pane').addClass('upper_right_rounded_corner')

  $('#about_me_tab').click ->
    select_tab('about_me')
    $('#tabbed_content_pane').addClass('upper_right_rounded_corner')

  select_tab = (tab_name) ->
    display_tabbed_content($('#' + tab_name + '_tab'), $('#' + tab_name + '_content'))
    window.history.pushState(tab_name + '_tab', '', '/' + tab_name);

  display_tabbed_content = (new_content_tab, new_content) ->
    $('#tab_pane .selected').toggleClass('selected')
    new_content_tab.toggleClass('selected')
    $('#content_pane .selected').toggleClass('selected')
    new_content.toggleClass('selected')

  select_tab( $('body').attr('data-action') )
