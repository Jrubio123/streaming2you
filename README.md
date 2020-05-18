bueno  aqui explciare un poco acerca de que fue lo que hice ya que ni yo me entendi.
para comenzar quiero decir que en la pagina donde subi el  parcial 2 estaban subidos los demas trabajos, espero pueda revisarlos:  https://upbeduco-my.sharepoint.com/:f:/g/personal/juan_rubiom_upb_edu_co/EmVUnazXbcJPpV1iEXvL540BRlQKBmZL7EfQl1Doer6riw?e=8G0vdX

bueno ya habiendo termiando eso emepzare por el inicio (como debe ser)  como falte a esa clase, lo que me dijeron mis amigos fue que debia crear un servicio de streaming y que este pueda ser visualziado desde cualquier parte , lastimosamente tuvimos problemas con esa parte entonces solo mostrare que hice ejeje, lo primero que hice fue crear un servidor web, no explciare este en el link anterior pueden ver el  video mio donde  explico como crear, tambien hay un documento donde lo explico, en ese servidor crearemos  el streaming yo opte por uno de audio entocnes explicare como instalar el icecast

primero:
sud apt update
este para actualziar

sudo apt install icecast2
este es para isntalarlo
Durante la instalación, veremos que en la consola se nos va a preguntar si queremos configurar las contraseñas de Icecast2. En caso de querer configurarlas manualmente, habría que escoger “No“. Para hacerlo fácil vamos a escoger “Si” y comenzaremos la configuración.

Continuamos especificando el nombre de host para el servidor. En este caso voy a utilizar “localhost”. Para continuar, solo hay que pulsar sobre “Aceptar“.

Después de esto, habrá que escribir las contraseñas para la administración, la del repetidor y la de usuario para acceder al backend. Es importante no olvidarnos de estas contraseñas.

ya realizado esto podemos usar los comandos

sudo systemctl start icecast2
 
sudo systemctl enable icecast2

ya tenemos el icecast pero esto es como una isntancia ahora sigue para el streaming para ello usamos el ices

instalamos
apt-get install ices2

mkdir / var / log / ices
mkdir / etc / ices2
mkdir / etc / ices2 / music

El paquete Ices2 viene con tres archivos de configuración de muestra, /usr/share/doc/ices2/examples/ices-alsa.xml , /usr/share/doc/ices2/examples/ices-oss.xml y / usr / share / doc / ices2 / examples / ices-playlist.xml . Usamos el último porque crearemos una lista de reproducción de archivos .ogg locales que queremos transmitir a los oyentes. Por lo tanto, copiamos ese archivo a / etc / ices2 :

entocnes lo que debemos ahcer es pasar los archivos de musica a reproducir pero en formato ogg para ello los pase por ftp usando una app llamada: winscp

Luego cree el archivo /etc/ices2/playlist.txt y coloque las rutas completas a sus archivos .ogg, una línea por archivo .ogg:

ahora incie el ices

ices2 /etc/ices2/ices-playlist.xml  y ya estaria configurado nuesta pagina de streaming como extra hice una pagina personal antes de esa, pero aqui es donde esta el problema

no pude hacer que funcione desde internet toca 

http://www.mipaginarubio.com/
entrar a ese link pero cambiando el dns en nuestro dispositivos por: 3.83.91.66 y ya tendria una version bonita de mi pagina de streaming muchas gracias de ante mano por todo, dejo los archivos que use aqui
