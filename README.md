# Projet Garage Vincent Parrot - ECF 2024

-----------------------------------------------------------------------------------------------------------------------

Ce projet est une évaluation en cours de formation nécessaire pour l'obtenttion du TP développeur web et web mobile.

Il s'agit d'un site web fictif, pour lequel je dois répondre aux besoins de Vincent Parrot, le gérant d'un garage 
automobile. 

Il souhaitait avoir une présence sur le net, suite au développement de son activité de vente de véhicules
d'occasion et pour rivaliser avec ses concurrents.
En sa qualité de gérant, Vincent Parrot aura à sa disposition une interface d'administration qui lui permettra de gérer 
son application :
* création d'employés (utilisateurs)
* publication d'annonces
* gestion des commentaires clients
* gestion des demandes envoyées par formulaire

Les employés, quant à eux, disposeront aussi de leur espace personnel pour gérer quelques fonctionnalités du site web. 
Ils auront un accès restreint à cette interface.

-----------------------------------------------------------------------------------------------------------------------
## Lien vers la version en ligne :

**https://www.garagevparrot-ecf.me**

-----------------------------------------------------------------------------------------------------------------------

## Installation en local :

### ----------Prérequis----------
* PHP installé sur votre environnement v8 ou supérieure
* Serveur MySQL 
* Serveur Web (Apache) 
* Je recommande Laragon mais vous pouvez utiliser aussi XAMPP, WAMP, etc...

### ----------Procédure----------

1. Récupération du code 

Dans l'IDE de votre choix, créez un projet vierge dans le répertoire souhaité, ouvrez le terminal et exécutez la commande
suivante :

```bash 
git clone https://github.com/MichelBKT/Garage_Parrot.git
```
Une fois, le repository cloné, positionnez vous dans le dossier créé :

    cd Garage_Parrot

installez les dépendances avec Composer :

    composer install

installez npm :

    npm install

et exécutez la commande suivante :

    npm run build --dev



2. Récupération de la base de données

Créez un fichier '.env.local ' à la racine du projet et insérez les variables en fonction de votre configuration

    DATABASE_URL="mysql://nom_utilisateur:mot_de_passe@127.0.0.1:port/nom_du_projet?serverVersion=8.0.32&charset=utf8mb4"
Lancez votre serveur web et votre serveur MySQL

Créez ensuite la BDD avec la commande :
    
    symfony console doctrine:databse:create

Enfin, sur PHPmyAdmin, importez les données présentes en annexe de la copie en PDF page 15 à 21 pour vous éviter la saisie des tables
manuellement.

***Note : j'ai créé moi-même les tables avec doctrine et injecté les données avec des insertions mySQL que j'ai créé 
moi-même. Je mets donc à votre disposition ce fichier d'import pour facilité votre intégration locale.***

En cas de problème, vous pouvez suivre ces étapes, mais les data ne seront pas insérées :
* créez les tables et les relations en utilisant le diagramme de classe fournit avec la copie et des entités présentes
dans le dossier src de l'application

* 
        symfony console make:migration
        symfony console doctrine:migrations:migrate
*  connectez vous à la BDD à l'aide de DataGrip ou de PHPmyAdmin
  *  pour créez un administrateur et ainsi avoir accès au back-end :

      * commencez par créer un poste de travail (workplace) 

             INSERT INTO workplace (id, designation) VALUES (1, 'gérant');
      * créer l'utilisateur :

            INSERT INTO user (id, workplace_id, email, roles, password, first_name, last_name) VALUES (1, 1, 
            'test@test.com', '["ROLE_ADMIN"]', '1234', 'John', 'Doe')
        * hasher le password :
        
                symfony console security:hash-password
        * récupérer le password encrypté et modifié le champs en BDD :
        
              UPDATE user SET password  = '$2y$13$gz8RegIN8Z2Wg1lOiL663.T48tjjXk3VKbA/ZjAj6XxoiZmpNp8BK' WHERE id= 1;

L'application Symfony est maintenant disponible et vous pouvez lancer votre navigateur en suivant ce lien :
**https://127.0.0.1:8000**













