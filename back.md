**SYMFONY**
- [1. LES COMPOSANTS](#1-les-composants)
- [2. COMPOSER](#2-composer)
- [3. FLEX](#3-flex)
- [4. LES RÉPERTOIRES](#4-les-répertoires)
- [5. LES FICHIERS](#5-les-fichiers)
- [6. ARCHITECTURE MVC](#6-architecture-mvc)
- [7. DEBUG](#7-debug)
- [8. ANNOTATIONS](#8-annotations)
  - [8.1. Utiliser les annotations](#81-utiliser-les-annotations)
- [9 ROUTE](#9-route)
  - [9.1. Avec routes.yaml](#91-avec-routesyaml)
  - [9.2. Avec les annotations](#92-avec-les-annotations)
- [10. ENTITY (ENTITÉ)](#10-entity-entité)
  - [10.1. Créer une table :](#101-créer-une-table-)
    - [10.1.1 Compliqué](#1011-compliqué)
    - [10.1.2 Simple mais sale](#1012-simple-mais-sale)
    - [10.1.3 Simple et propre](#1013-simple-et-propre)
- [11. REPOSITORY](#11-repository)
- [12. ENTITY MANAGER (gestionnaire d'entité)](#12-entity-manager-gestionnaire-dentité)
- [13. INJECTION DE DÉPENDANCES (dependency injection)](#13-injection-de-dépendances-dependency-injection)
- [14. FONDAMENTAUX HTTP & SYMFONY](#14-fondamentaux-http--symfony)
- [15. CONTRÔLEUR (CONTROLLER)](#15-contrôleur-controller)
  - [15.1. À la main](#151-à-la-main)
  - [15.2 Grâce à Composer](#152-grâce-à-composer)
- [16. TWIG](#16-twig)
  - [16.1. Include](#161-include)
  - [16.2. Extends](#162-extends)
  - [16.3. Commentaires](#163-commentaires)
  - [16.4. Gestion des chemins](#164-gestion-des-chemins)
- [17. GESTION DE FORMULAIRE](#17-gestion-de-formulaire)
  - [17.1. Faire le formulaire avec SYmfony](#171-faire-le-formulaire-avec-symfony)

C'est un framework PHP (cadriciel), une boîte à outils logicielle. CRUD (Create / Read / Update / Delete) -> Symfony va nous permettre de faciliter le développement d'applis en PHP

 * logiciel libre créé en 2009 par **Fabien Potencier**
 * v.5.2
 * c'est un ensemble de composants (components) dont le coeur s'appelle le *kernel* en anglais (noyau). On peut installer uniquement le kernel mais son fonctionnement sera limité. il faudra installer d'autres composants.

# 1. LES COMPOSANTS 
 - *doctrine* : gère la BDD / ORM (object relation manager) -> dans l'appli symfony on ne connaît que l'ORM
 - *twig* : va servir à faire des templates (gabarit) HTML // composant qui va gérer un fichier
 - *monolog* : outil pour gérer les journaux de logiciels (historique, journaux d'utilisation)
 - *API* : sert à créer une architecture pour que le dev front puisse accéder à ses données
On peut utiliser chacun de ces composants séparemment 

# 2. COMPOSER 
- Composer s'utilise dans le terminal (il faut installer un terminal et composer)
- Ces composants sont installés avec un outil PHP -> Composer 
- Tout programme qui respecte les conventions psr-4 peut être chargé avec Composer (installé et utilisé)

# 3. FLEX
 * **Aucun rapport avec le flex de CSS**
 * Flex est un logiciel qui va servir à gérer l'installation des composants
 * Les devs écrivent une recette qui explique comment va s'insataller les composants de Symfony

# 4. LES RÉPERTOIRES
- [bin] : fichiers exécutables si PHP est installé, des outils pour nous simplifier la vie (la console, phpunit, etc.)
- [config] : contient les fichiers de configurations de Symfony et de ses composants
- [migrations] : doctrine va versionner l'évolution de la structure de la BDD (fichiers PHP)
- [public] : dossier qu'il faudra rendre accessible par le serveur HTTP
- [src] : code de l'appli
- [template] : contient les gabarits HTML
- [tests] : endroit ou l'on écrit les tests
- [translations] : les traductions
- [var] : fichiers temporaires de Symfony (cache et journaux)
- [vendor] : pas lié à Symfony mais à Composer qui stocke à cet endroit tous les fichiers

# 5. LES FICHIERS 
- [.env] : fichier de config pour notre environnement (connexion à la BDD)
- [composer.json] : fichier utile à composer pour paramétrer le paquet

# 6. ARCHITECTURE MVC
MVC est une façon d'écrire du code en séparant trois éléments : 
 * Modèle (model) : l'ensemble du code qui va interagir avec la BDD 
 * Vue (view) : ce qui va concerner le rendu visuel
 * Contrôleur (controller) : lien entre les deux et authentification des droits de modification
Intérêts : 
- Façon d'organiser le code à plusieurs (pour les intégrateurs)
- Façon d'optimiser les performances (en séparant le code qui requête la BDD du code qui fait le rendu visuel)
D'autres architectures existent (ADR -> Action Domain Responder , DDD -> Domain Driven Design , etc.).

# 7. DEBUG 
Pour debuger on va utiliser essentiellement deux fonctions :
* `dd()`   -> dump and die : formater et avec des outils qui tuent la mort 
* `dump()` -> s'affiche dans le profiler (petite cible) avec des outils de recherche
Quelques outils :
 - la couleur (coloration syntaxique)
 - outil de repli des propriétés
 - recherche avec `ctrl + f` -> chercher des propriétés puis `échap`
Ce composant s'installe grâce à `composer req symfony/var-dumper`

# 8. ANNOTATIONS
 - Symfony utilise des annotations pour définir des ppropriétés en plus du code. 
 - EXEMPLES : 
        `/* exemple de commentaire multiligne */`
        `/** Exemple d'annotations */`
 - Une annotation commence par @ et doit être importée avec un use etc. 
  
## 8.1. Utiliser les annotations 
1. Installer le paquet annotations 'composer require annotations'
2. Utiliser un commentaire miltiligne pour donner une @Route
3. Debug avec php bin/console debug:router 
4. Voir ArticlesController.php

# 9 ROUTE
- Elle est légèrement différente d'une URL 
- Morceau d'URL à laquelle va correspondre une action dans notre application 
- Exemples :
        [/articles]           : liste de tous les articles
        [/articles/new]       : créer un article 
        [/articles/1]         : afficher l'article 1
        [/articles/1/edit]    : modifier l'article 1
        [/articles/1/delete]  : supprimer l'article 1

## 9.1. Avec routes.yaml
1. Aller sur le fichier route.yaml et donner un nom à notre route
2. Définir le chemin que l'on veut lui donner
3. Décrire son chemin absolu
Exemples : 
- app_nom:
        path: /chemin
        controller: App\Controller\Page::fonction
- app_chance:
        path: /chance
        controller: App\Controller\ChanceController::getNumber

## 9.2. Avec les annotations
1. Faire un commentaire multiligne
2. Déclarer que l'on fait une route grâce à @Route("", name="")
3. Dans les premières guillemets, déclarer le chemin
4. Dans les secondes, le nom de notre chemin (IMPORTANT pour les href)
5. Penser à mettre le use : `use Symfony\Component\Routing\Annotation\Route;`
Exemple : 
- /** 
     * @Route("/produits/", name="liste_produits")
    */
- /**
     * @Route("/accueil/", name="accueil")
     */

# 10. ENTITY (ENTITÉ) 
Une table sera représentée par une classe dans Symfony. Les propriétés vont représenter les champs de la table. Seules les propriétés qui auront été marquées par des annotations seront converties dans la base de données en champs.
Pour créer la table il faut lancer la console :
```php bin/console doctrine:schema:update --force``` 
(déconseillé car pas de migrations (pas de maj automatique))
Pour générer plus facilement les entités, on peut utiliser :
```php bin/console make:entity```

## 10.1. Créer une table :
### 10.1.1 Compliqué
1. Version compliquée, on se prend la tête : à rechercher dans la doc
- Créer une nouvelle classe dans entity et l'annoter avec @ORM\ENtity
- Dans cette classe on créera nos intitulés de colonnes que l'on définiera grâce aux annotations
- On fait un getter pour l'id et un getter et un setter pour les autres intitulés de colonnes 
- Aller dans la console et taper `php bin/console doctrine:schema:update --force`
### 10.1.2 Simple mais sale
2. version moins compliquée mais pas propre quand même
- Dans la console on met : ` php bin/console make:entity`
- La console nous propose de créer les colonnes et de leur donner une valeur (pas besoin de l'index / ajouter automatiquement)
- On vérifie ce qu'il y a dans notre page qui a été créée 
- Aller dans la console et taper `php bin/console doctrine:schema:update --force`
### 10.1.3 Simple et propre
3. version moins compliquée et propre
- Dans la console on met : `php bin/console make:entity`
- La console nous propose de créer les colonnes et de leur donner une valeur (pas besoin de l'index / ajouter automatiquement)
- On vérifie ce qu'il y a dans notre page qui a été créée 
- Aller dans la console et taper `php bin/console make:migration`
- Vérifier la classe créée
- Lancer dans la console : `php bin/console doctrine:migrations:migrate` ou pour les feignasses : `php bin/console d:m:m`

# 11. REPOSITORY
À côté de l'entité est créé un repository qui servira à contenir les fonctions de recherche dans la base de données. 

# 12. ENTITY MANAGER (gestionnaire d'entité)
- Abstraction qui sert à gérer toutes les entités : 
  - Ajouter une nouvelle ligne
  - Supprimer
  - etc.
- Par défaut c'est doctrine qui est utilisée, mais il y a d'autres options

# 13. INJECTION DE DÉPENDANCES (dependency injection)
Lorsque l'on travaille dans le contrôleur (controller), on aura besoin de nombreux outils externes : 
- l'outil de recherche dans une entité (BDD), le repository
- un outil d'envoi de mail (mailer)
- un outil pour hasher le mdp 
- etc.
Dans Symfony, on accède facilement à ces instances grâce à l'injection de dépendances ; il suffit d'écrire le type et un nom de variable dans la méthode. Si Symfony connaît ce type, il l'instanciera et nous le fournira. 
Quand Symfony met en relation nos fonctions et ses dépendances, on parle d'"autowiring".
La liste complète des dépendances utilisables : 
```php bin/console debug:autowiring```

# 14. FONDAMENTAUX HTTP & SYMFONY
On trouvera toujours les mêmes étapes : 
1. Une requête utilisateur : Symfony assemble un objet *Request*
2. Toutes les requêtes passent par le Front Controller dans [public/index.php]
3. Le noyau (*kernel*) identifie la route demandée et un éventuel contrôleur
4. La requête est envoyée au contrôleur identifié en vue de faire une *Response*
5. La requête se termine

# 15. CONTRÔLEUR (CONTROLLER)
Pour créer un controller on a deux solutions :

## 15.1. À la main
- On créée au bon endroit notre contrôleur 

## 15.2 Grâce à Composer
- `php bin/console make:controller`
- Créé automatiquement une classe, une méthode, une route et un petit template

# 16. TWIG
- Installer l'extention *Twig Language*
- Fichiers nommés [.html.twig]
- La syntaxe HTML fonctionne normalement, cependant, on peut y insérer des variables et des petites fonctions de Twig
- Localisation des fichiers : dossier [templates] par défaut

## 16.1. Include 
- Insère l'entièreté d'un fichier : `{% include 'chemin/fichier.html.twig' %}`

## 16.2. Extends
- Modifier un fichier parent (système d'héritage) : `{% extends 'parent.html.twig' %}`
- Il suffit de redéfinir le bloc du parent : `{% block nom_élément %} Nouveau contenu {% end block %}`

## 16.3. Commentaires
- Les commentairess'écrivent : `{# mon commentaire #}`

## 16.4. Gestion des chemins
- Pour laisser Twig calculer les URL corrects, on peut utiliser : `{{ path('nom_de_la_route') }}`

# 17. GESTION DE FORMULAIRE
- Pour un utilisateur, la gestion d'un formulaire se passe toujours en deux étapes : 
  1. Affichage du formulaire : première requête
  2. Au clic sur le bouton -> traitement des données du formulaire : deuxième requête `<form action="..."></form>`

## 17.1. Faire le formulaire avec SYmfony