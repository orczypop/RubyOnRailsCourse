class Libro < ActiveRecord::Base

#Se impedirá que se introduzca un libro con título o autor vacíos
validates_presence_of :titulo, message: 'El campo título no puede estar vacío'
validates_presence_of :autor, message: 'El campo autor no puede estar vacío'
#Se impedirá que dos libros con mismo título se guarden
validates_uniqueness_of :titulo, message: 'El título ya existe y no se puede repetir. Por favor, introduzca otro título'

end
