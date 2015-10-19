# ruby -Itest test/features/tabbing/test_tabs.rb

require 'test_helper'

feature 'tabs' do

  scenario 'Tabs change selection on click', js: true do

    visit welcome_path

    page.must_have_content 'Hello, my name is Nathaniel Barnes'
    page.wont_have_content 'Portfolio Platform'

    page.find('#projects_tab').click

    page.must_have_content 'Portfolio Platform'
    page.wont_have_content 'Hello, my name is Nathaniel Barnes'
    page.wont_have_content 'post1_title'

    page.find('#blog_tab').click

    page.must_have_content 'post1_title'
    page.wont_have_content 'Portfolio Platform'
    page.wont_have_content 'Hello, my name is Nathaniel Barnes'

    page.find('#about_me_tab').click

    page.must_have_content 'I am tall and live 20 minutes east of Seattle'
    page.wont_have_content 'post1_title'
    page.wont_have_content 'Portfolio Platform'
    page.wont_have_content 'Hello, my name is Nathaniel Barnes'

    page.find('#projects_tab').click

    page.must_have_content 'Portfolio Platform'
    page.wont_have_content 'Welcome to my portfolio and blog!'
    page.wont_have_content 'post1_title'

  end

  scenario 'Upper right content display rounds / unrounds based on welcome selection', js: true do

    visit blog_path
    assert page.has_css?('div.upper_right_rounded_corner'), 'Assertion has_rounded_corner failed, does not have class'
    page.find('#welcome_tab').click
    refute page.has_css?('div.upper_right_rounded_corner'), 'Refutation has_rounded_corner failed, does have class'
    visit projects_path
    assert page.has_css?('div.upper_right_rounded_corner'), 'Assertion has_rounded_corner failed, does not have class'
    visit login_path
    refute page.has_css?('div.upper_right_rounded_corner'), 'Refutation has_rounded_corner failed, does have class'

  end

end
