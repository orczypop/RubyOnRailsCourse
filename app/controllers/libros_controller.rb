class LibrosController < ApplicationController
  
  def index
    @libro = Libro.new
  end
  
  def alta
    @libro = Libro.new
    @libro.titulo = params[:titulo]
    @libro.autor = params[:autor]
    @libro.genero = params[:genero]
    @libro.save
    
    render :index
  end
  
  def modificar_vista
    id = params[:id].to_i
    @libro = Libro.find id
    
    render :index
  end
  
  def modificar
    id = params[:id].to_i
    @libro = Libro.find id
    @libro.titulo = params[:titulo]
    @libro.autor = params[:autor]
    @libro.genero = params[:genero]
    @libro.save
    
    @libro = Libro.new
    render :index
  end
  
  def baja
    arrayIds = params[:ids]
    Libro.delete arrayIds

    @libro = Libro.new
    render :index
  end

  def buscar_titulo
    titulo = params[:valor]
    @librosEncontrados = Libro.where(:titulo => titulo)

    @libro = Libro.new
    render :index
  end
  
  def buscar_autor
    autor = params[:valor]
    @librosEncontrados = Libro.where(autor: autor)
    
    @libro = Libro.new
    render :index
  end
  
  def buscar_genero
    genero = params[:valor]
    @librosEncontrados = Libro.where(genero: genero)
    
    @libro = Libro.new
    render :index
  end
  
  
end
