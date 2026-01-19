# Projet de Stage : Application Web pour Agence de Voyage

Ceci est le projet final pour mon stage d'été. Il s'agit d'une application web complète pour une agence de voyage fictive, construite avec Java Spring Boot.

## Fonctionnalités Principales

* **Site Public Dynamique** : Une vitrine pour les visiteurs, avec une page d'accueil, une liste de destinations filtrable, des pages de détail, une page de contact, et plus encore.
* **Système de Réservation** : Les utilisateurs peuvent réserver des voyages via un formulaire simple.
* **Témoignages Clients** : Les visiteurs peuvent laisser des avis, qui sont ensuite modérés par un administrateur.
* **Espace Administrateur Sécurisé** : Un back-office complet protégé par un mot de passe pour gérer le contenu du site.
    * **CRUD complet pour les destinations** (Ajouter, Voir, Modifier, Supprimer).
    * Consultation des réservations.
    * Modération des témoignages.

## Technologies Utilisées

| Domaine           | Technologie/Framework                               |
| ----------------- | --------------------------------------------------- |
| **Backend** | Java 17+, Spring Boot, Spring MVC, Spring Data JPA, Spring Security |
| **Frontend** | Thymeleaf, HTML5, CSS3, JavaScript                  |
| **Base de Données** | MySQL                                               |
| **Styling** | Bootstrap 5                                         |
| **Serveur** | Apache Tomcat (intégré à Spring Boot)               |
| **Gestion** | Maven                                               |

## Comment Lancer le Projet

1.  **Prérequis** :
    * Java JDK 17 ou plus récent.
    * Apache Maven.
    * Un serveur MySQL (par exemple, via XAMPP ou WAMP).

2.  **Cloner le projet** (si téléchargé depuis GitHub) :
    ```bash
    git clone [https://context.reverso.net/traduction/allemand-francais/Depotauszug](https://context.reverso.net/traduction/allemand-francais/Depotauszug)
    ```

3.  **Configurer la Base de Données** :
    * Créez une base de données vide nommée `agence_voyage_db` dans votre MySQL.
    * Importez les données en utilisant le fichier `agence_voyage_db.sql` fourni. Dans phpMyAdmin, sélectionnez la base, allez dans l'onglet "Importer", et choisissez le fichier.

4.  **Configurer la Connexion** :
    * Ouvrez le fichier `src/main/resources/application.properties`.
    * Modifiez les lignes `spring.datasource.username` et `spring.datasource.password` pour correspondre à vos identifiants MySQL.

5.  **Lancer l'Application** :
    * Ouvrez le projet dans votre IDE (ex: IntelliJ).
    * Exécutez la méthode `main` dans la classe `AgenceVoyageApplication.java`.

6.  **Accéder à l'application** :
    * **Site Public** : [http://localhost:8081](http://localhost:8081)
    * **Espace Administrateur** : [http://localhost:8081/admin/dashboard](http://localhost:8081/admin/dashboard)
        * **Login** : `admin`
        * **Mot de passe** : `admin123`

