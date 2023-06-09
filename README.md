# Java Web Taller 8 y 9
# Julian David Tique Arias - 2687351 
# Forwarding y Redirection 

- En este nuevo repositorio se hizo la url más segura con el uso de forwarding para que en la url no se muestre la ubicacion exacta del archivo 
- Para hacer esto primero se cambia en la etiqueta a 

 ![image](https://github.com/julian79110/JavaWeb8/assets/128442954/fec84c16-9d63-4ae8-99d5-a35095e07cad)
 
- Luego de esto se crea una clase de java en el sub paquete servlet para el forwarding 

 ![image](https://github.com/julian79110/JavaWeb8/assets/128442954/1739aa7b-96f0-4bad-88ee-dea5136a5681)
 
-Una vez creada esta clase se hereda de la clase HttpServlets 

![image](https://github.com/julian79110/JavaWeb8/assets/128442954/d73f04a6-4125-407f-ad9b-793f0b130ab6)

- Ahora con @WebServlet se le pasa el nombre que se le puso en la etiqueta a 

![image](https://github.com/julian79110/JavaWeb8/assets/128442954/ef52635b-58f0-4c91-b641-f4dedf19c741)

- Luego de esto con doGet y dispatcher se le pasa el request y el response, en el dispatcher se le pasa la url y con dispatcher.forward se le vuelve a pasar request y response

![image](https://github.com/julian79110/JavaWeb8/assets/128442954/a96146f8-ab78-4db0-90a6-7d6aae4e0c81)

- Una vez hecho esto deberia aparecer con el nombre que se le puso en la etiqueta a en la url de nuestro proyecto. 

![image](https://github.com/julian79110/JavaWeb8/assets/128442954/e1f6981c-77f2-4508-8a43-0888057aebf6)




