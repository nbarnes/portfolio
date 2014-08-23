$ ->

  $('#projects_tab').click ->
    display_tabbed_content($('#projects_tab'), $('#projects_content'))

  $('#blog_tab').click ->
    display_tabbed_content($('#blog_tab'), $('#blog_content'))

  display_tabbed_content = (new_content_tab, new_content) ->
    $('#tab_pane .selected').toggleClass('selected')
    new_content_tab.toggleClass('selected')
    $('#content_pane .selected').toggleClass('selected')
    new_content.toggleClass('selected')