# frozen_string_literal: true

Quando('pesquisar o filme {string}') do |value|
  @search = SearchPage.new
  @text_param = value
  @search.search_movie(@text_param)
end

Então('o resultado da busca deve ser exibido corretamente') do
  @search = SearchPage.new
  expect(@search.return_search).to have_content @text_param
end
