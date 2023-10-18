# Parte 2
Ejecutamos el comando rails new todo_app para crear una nueva aplicación
![Imagen 1](images/1.png)

Ahora nos vamos a ese directorio y ejecutamos rails generate scaffold todo description:string
![Imagen 2](images/2.png)

Ahora para inicializar la base de datos podemos usar bundle exec rake db:migrate
![Imagen 3](images/3.png)

Ahora copiamos los registros del Todo en db/seeds.rb para luego agregarlos a la base de datos usando rake db:seed
![Imagen 4](images/4.png)

Para verificar que los registros se agregaron usaremos la consola interactiva de rails

![Imagen 5](images/5.png)

Ahora corremos el servidor y vemos que en la ruta /todos nos aparece una lista con los registros de la base de datos
![Imagen 6](images/6.png)

Ahora para agregar la fecha límite del todo usamos el comando rails generate migration AgregarFecha due_date:datetime y luego hacemos otra migración
![Imagen 7](images/7.png)

Vemos que se creó un nuevo archivo de migrate
![Imagen 8](images/8.png)

Ahora agregaremos un ruta /hello a la apliación, así mismo crearemos su .html.erb y agregaremos la función de respuesta al controlador, y así podremos visualizarla
![Imagen 9](images/9.png)
![Imagen 10](images/10.png)

Ahora volveremos a cambiar la base de datos para agregar el booleano de Done
![Imagen 11](images/11.png)

Cambiamos el todo_params del controlador para que acepte el booleano done, además cambiamos los archivos de la vista que muestra el todo y el formulario de editarlo también
![Imagen 12](images/12.png)

También en el archivo de migración completamos la función change 
![Imagen 13](images/13.png)

Vemos la página con el done
![Imagen 14](images/14.png)

En la ruta /new podemos crear otro todo
![Imagen 15](images/15.png)

En el archivo routes.rb usamos root todos#index para que la página de todos se muestre en la ruta raíz
![Imagen 16](images/16.png)
![Imagen 17](images/17.png)

Para enumerar las migraciones creadas usamos rake db:migrate:status y para regresar a una migración anterior usamos rake db:rollback
![Imagen 18](images/18.png)