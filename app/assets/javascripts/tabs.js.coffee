$ ->

  $('#welcome_tab').click ->
    display_tabbed_content($('#welcome_tab'), $('#welcome_content'))
    $('#content_pane').removeClass('upper_right_rounded_corner')

  $('#projects_tab').click ->
    display_tabbed_content($('#projects_tab'), $('#projects_content'))
    $('#content_pane').addClass('upper_right_rounded_corner')

  $('#blog_tab').click ->
    display_tabbed_content($('#blog_tab'), $('#blog_content'))
    $('#content_pane').addClass('upper_right_rounded_corner')

  $('#about_tab').click ->
    display_tabbed_content($('#about_tab'), $('#about_content'))
    $('#content_pane').addClass('upper_right_rounded_corner')

  display_tabbed_content = (new_content_tab, new_content) ->
    $('#tab_pane .selected').toggleClass('selected')
    new_content_tab.toggleClass('selected')
    $('#content_pane .selected').toggleClass('selected')
    new_content.toggleClass('selected')

