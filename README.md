# GreenCode

## _Site de formations à l'écologie informatique_

GreenCode est un organisme de formation permettant à tout instructeur expert dans son domaine de proposer des modules de  cours sur l'écologie informatique.

## Présentation du projet

> C’est un fait, la crise écologique est devenue une urgence majeure. La sixième extinction massive a déjà commencé et le changement climatique se fait de plus en plus ressentir au fil des années. Mais qu’en est-il d’internet ?
> En matière d’émissions de CO2, il pollue 1.5 fois plus que le transport aérien. D’ailleurs, en 20 ans, le poids d’une page > web a été multiplié par 115 (source : <https://www.greenit.fr/>) Face à ce constat, un organisme de formation a été fondé en > 2017 : GreenCode. Son objectif est d’être une plateforme d’éducation permettant à tout instructeur expert en accessibilité > et en éco-conception web de présenter des modules de cours.
> À terme, GreenCode désire devenir la référence française pour les développeurs soucieux de leur impact digital.

### Lien de la version en ligne du projet

    http://greencode-formations.herokuapp.com

### Lien vers le GitHub du projet

    https://github.com/PxlFrey/greencode-ECF.git

## Spécifications techniques

- HTML 5
- CSS 3
- JavaScript
- AOS Library (<https://github.com/michalsnik/aos>)
- Unsplash (<https://unsplash.com/>)
- Symfony 6
- PHP 8.0.2
- EasyAdmin Bundle pour l'administration
- My SQL Command Line 8.0 pour l'écriture de la base de données
- Heroku pour le déploiement

## Installation en local

Sur un terminal de commandes :

```sh
git clone https://github.com/PxlFrey/greencode-ECF.git:nomDeVotreDossier
```

> La valeur ‘nomDeVotreDossier’ équivaut au dossier où vous vous trouvez.

### Récupérer la base de données

> Le fichier de base de données se situe dans le dossier “Documentation” et se nomme : greencode.sql.
> Pour importer une base de données à partir d'un fichier d'import, vous pouvez utiliser le client MySQL. Voici la syntaxe pour l’importation:

```sh
mysql -u nom_utilisateur -p nom_de_la_base < greencode.sql
```

### Intégrer la base de données avec symfony

> Dans le fichier .env à la racine du projet, veuillez renseigner à la ligne DATABASE_URL, les informations concernant la base de données importée (Ne pas oublier de décommenter la ligne) :

```sh
# Uncomment the following to use a different database driver
# DATABASE_URL="mysql://db_user:db_password@127.0.0.1:3306/db_name?serverVersion=5.7"
```

### S’inscrire ou postuler sur GreenCode

> Maintenant que vous avez accès au site en local, vous avez la possibilité de vous inscrire à la page correspondante.
Renseignez vos informations pour devenir un utilisateur du site.

### Accéder à l’administration

> De base, l’accès à l’administration est activé pour toute personne connectée sur le site, pour des raisons de test, ce qui n’et pas le cas du site mise en ligne.

- En suivant la route /admin, vous aurez accès à la page d’administration du site.
- En suivant la route /formations, vous aurez accès à la page dédiée au formateur.

### Sécuriser l'administration

> Pour sécuriser l’administration, il faut modifier le fichier security.yaml, et à l’encart access_control, remettre les valeurs comme montré dans l’exemple ci-dessous.

```sh
    access_control:
         - { path: ^/account, roles: ROLE_APPRENANT }
         - { path: ^/admin, roles: ROLE_ADMIN } 
         - { path: ^/formations, roles: ROLE_FORMATEUR }
         - { path: ^/lesson, roles: ROLE_APPRENANT }
```

### Gestion des utilisateurs

> Sur la section “Gestion des utilisateurs”, vous pouvez avoir accès aux utilisateurs enregistrés. Il est possible de modifier certains paramètres notamment les rôles. Par contre il n’est pas possible de créer un utilisateur par ce biais, il est nécessaire de passer par le formulaire d’enregistrement.
> Quand vous créez votre utilisateur pour la première fois, vous aurez la possibilité de changer votre rôle en devenant formateur, ce qui aura pour but d’activer la possibilité d’accéder au tableau de bord dédié aux formateurs pour rajouter les formations et les leçons que vous souhaitez.

### Définition des rôles

> L’administrateur a son propre tableau de bord et gère les utilisateurs et donne le rôle de formateur à l’utilisateur qui le souhaite. Le formateur a son propre tableau de bord et gère les leçons et les formations. L’apprenant peut accéder aux leçons du site et à son compte.

### Gestion des formations

> En accédant à “Gestion des formations” en tant que formateur, vous aurez la possibilité de créer des formations et des leçons. Certaines valeurs sont obligatoires.
> Une formation se compose de :

- Nom de la formation
- Couleur
- Illustration (non obligatoire)
- Description de la formation
- Liste des cours disponibles pour cette formation (leçons disponibles si elles existent)

> Une leçon se compose de :

- Titre de la formation
- Lien avec la formation dédiée
- Fichier en pdf pour pouvoir télécharger la leçon sur le site par l’apprenant
- Image d’illustration
- Url de la leçon
- Résumé de la leçon
- Contenu de la leçon

