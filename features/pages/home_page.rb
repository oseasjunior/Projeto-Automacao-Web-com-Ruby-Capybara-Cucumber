class HomePage < SitePrism::Page
  set_url 'treinamento/home'

  element :criar_usuarios, :xpath, '//a[contains(text(),"Criar Usuários")]'
  element :formulario, :xpath, '//a[contains(text(),"Formulário")]'
  element :lista_usuarios, :xpath, '//a[contains(text(),"Lista de Usuários")]'
  element :titulo, '.tamanhodivupl'

  def formulario_click
    formulario.click
  end

  def criar_usuario_click
    criar_usuarios.click
  end

  def listar_usuario_click
    lista_usuarios.click
  end
end
