# frozen_string_literal: true

class SearchPage < SitePrism::Page
  element :search_btn, 'body > div.page_wrap._wrap > header > div.content > div > div.flex > ul > li.glyph.search_buttons > a.search > span'
  element :input_value_search, '#search_v4'
  element :return_search, '.details'

  def search_movie(value)
    search_btn.click
    input_value_search.set(value).send_keys(:enter)
    sleep(5)
  end
end
