class ListPage < SitePrism::Page
  set_url 'users'

  element :texto, 'h5'
  element :delete, :xpath, '(//a[contains(@href, "/users/895")])[3]'
  element :mensagem, '#notice'
  element :btn_voltar, :link, 'Voltar'

  def deletar
    delete.click
  end
end
