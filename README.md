# Restaurant
Projet permettant à l'utilisateur de gérer entièrement son restaurant  (menus , plats , client)

## Prérequis 

créer un fichier `application.properties` à la racine comme ceci :

    src/main/resources/application.properties

Coller ce code ci dessous :

```java
spring.application.name=restaurant
spring.thymeleaf.prefix=classpath:/templates/
spring.thymeleaf.suffix=.html
spring.thymeleaf.enabled=true

spring.datasource.url=jdbc:mysql://localhost:3306/my_restaurant?useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&zeroDateTimeBehavior=convertToNull
spring.datasource.username=root
spring.datasource.password=root
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
# Configuration de validation Hibernate
spring.jpa.properties.javax.persistence.validation.mode=none

# Hibernate
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true    
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL8Dialect

logging.level.org.hibernate.SQL=DEBUG
# logging.level.org.hibernate.type=TRACE

spring.jpa.generate-ddl=true

upload.directory=/home/amine24/springboot-images
spring.servlet.multipart.max-request-size=10MB
```

La base de donnée my_restaurant est disponible à la racine du projet elle se nomme **my_restaurant.sql**

## Fonctionnalité

L'utilisateur peut créer son restaurant et le modifier à sa guise
- Possibilité de créer une carte contenant plusieurs menu , chacun des menus contiennent plusieurs plats
- CRUD complet pour les plats , menu , carte 
- Clean code with structure (Controller > Services > Repository > Entity (Model) )
- plusieur function permettant chacune de faire des actions différente
- CRUD Plat , Menu , Complement , Rating
- Système de commentaire et de note sous forme d'étoile
- Modification complet du restaurant
- Page permettant de verifier si la personne posséde un restaurant

