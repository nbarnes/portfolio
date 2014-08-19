$ ->

  $('#tab1').click ->
    display_tabbed_content($('#tab1'), $('#content1'))

  $('#tab2').click ->
    display_tabbed_content($('#tab2'), $('#content2'))

  $('#tab3').click ->
    display_tabbed_content($('#tab3'), $('#content3'))

  $('#tab4').click ->
    display_tabbed_content($('#tab4'), $('#content4'))

  display_tabbed_content = (new_content_tab, new_content) ->
    $('#tab_pane .selected').toggleClass('selected')
    new_content_tab.toggleClass('selected')
    $('#content_pane .selected').toggleClass('selected')
    new_content.toggleClass('selected')