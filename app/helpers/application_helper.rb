module ApplicationHelper
  def teste
    "<a href='lalala'>teste</a>"
  end

  def menu_principal
    menu = %w(cliente qualificacao restaurante)
    menu_principal = "<ul>"
    menu.each do |item|
      menu_principal << "<li>" + link_to(item, :controller => item.pluralize)
    end
    menu_principal << "</ul>"
    raw menu_principal
  end

  def comentarios(comentavel)
    comentarios = "<div id='comentarios'>"
    comentarios << "<h3>Comentarios</h3>"
    comentarios << render(:partial => "comentarios/comentario", :collection => comentavel.comentarios)
    comentarios << "<div>"

    raw comentarios
  end
      
end
