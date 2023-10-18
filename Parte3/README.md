· ¿Cuál es el objetivo de ejecutar bundle install?
Instalar todas las gemas que el proyecto necesita
· ¿Por qué es una buena práctica especificar –without production al ejecutarlo en su computadora de desarrollo?
Para no instalar gemas que solo se usará en un entorno de producción
· ¿En qué parte de la estructura del directorio de la aplicación Rails está el código correspondiente al modelo WordGuesserGame?
Se encuentra en app/models/word_guesser_game.rb
· ¿En qué archivo está el código que más se corresponde con la lógica del archivo app.rb de las aplicaciones Sinatra que maneja las acciones entrantes del usuario?
En app/controllers/game_controller.rb está toda la lógica que se encarga de lo que haga el usuario.
· ¿Qué clase contiene ese código?
Tiene la clase GameController
· ¿De qué otra clase (que es parte del framework Rails) hereda esa clase?
Hereda de ApplicationController
· ¿En qué directorio está el código correspondiente a las vistas de la aplicación Sinatra (new.erb, show.erb, etc.)?
Está en el directorio app/views/game en esa ruta se encuentran todos los archivos que muestra el navegador.
· Los sufijos de nombre de archivo para estas vistas son diferentes en Rails que en la aplicación Sinatra. ¿Qué información proporciona el sufijo situado más a la derecha del nombre del archivo (por ejemplo: en foobar.abc.xyz, el sufijo .xyz) sobre el contenido del archivo?
Los archivos .erb son archivos embebidos de Ruby que nos permite insertar código Ruby dentro del HTML.
· ¿Qué información te brinda el otro sufijo sobre lo que se le pide a Rails que haga con el archivo?
En este caso le dice a Rails que trate el archivo como un .html
· ¿En qué archivo está la información de la aplicación Rails que asigna rutas (por ejemplo, GET/new) a las acciones del controlador?
Está en el archivo config/routes.rb
· ¿Cuál es el papel de la opción :as => 'name' en las declaraciones de ruta de config/routes.rb? .
Es el estado del juego que va a ejecutar
