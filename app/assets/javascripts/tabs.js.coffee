$ ->

  window.select_tab = (tab_name) ->
    display_tabbed_content($('#' + tab_name + '_tab'), $('#' + tab_name + '_content'))

  display_tabbed_content = (new_content_tab, new_content) ->
    $('#tab_pane .selected').toggleClass('selected')
    new_content_tab.toggleClass('selected')

    if (new_content_tab.attr('id') == 'welcome_tab')
      $('#tabbed_content_pane').removeClass('upper_right_rounded_corner')
    else
      $('#tabbed_content_pane').addClass('upper_right_rounded_corner')

    $('#content_pane .selected').toggleClass('selected')
    new_content.toggleClass('selected')
