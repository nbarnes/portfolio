$ ->

  window.select_tab = (tab_name) ->
    display_tabbed_content($('#' + tab_name + '_tab'), $('#' + tab_name + '_content'))

  display_tabbed_content = (new_content_tab, new_content) ->
    $('.tab.selected').removeClass('selected')
    new_content_tab.addClass('selected')

    if (new_content_tab.is( $('.tab:first') ))
      $('#tabbed_content_pane').removeClass('upper_right_rounded_corner')
    else
      $('#tabbed_content_pane').addClass('upper_right_rounded_corner')

    $('.tabbed_content.selected').removeClass('selected')
    new_content.addClass('selected')
