--Exo1: Afficher tous les frameworks associés à leurs langages.
--Si un langage n'a pas de framework l'afficher aussi.

SELECT `frameworks`. `name`, `languages` . `name`
FROM `frameworks`
RIGHT JOIN `languages`ON `frameworks` . `languagesId` = `languages` . `id`;



--INNER JOIN  permet donc de faire une jointure interne sur deux tables.


--Correction Nico V
--xo4:
-- data.sql
--SELECT `languages`.`name` AS `langName`, COUNT(`frameworks`.`id`) AS `numberOfFrameworks`
--FROM `languages`
--INNER JOIN `frameworks`
--ON `languages`.`id` = `frameworks`.`languagesId`
--GROUP BY `languagesId`
-- HAVING agit comme le WHERE mais il permet de vérifier dans un tableau résultant d'une jointure.
--HAVING `numberOfFrameworks` > 3;


--EXO3:
--Ici le fait d'ajouter COUNT(`nom_de_la_table_contenant_la_colonne_a_compter`.`nom_de_la_colonne_contenant_la_valeur_a_compter`) va permettre de compter le nombre de valeurs contenues dans la colonne indiquée.
--SELECT `languages`.`name` AS `langName`, COUNT(`frameworks`.`id`) AS `numberOfFrameworks`
--FROM `languages`
--INNER JOIN `frameworks`
--ON `languages`.`id` = `frameworks`.`languagesId`
--La commande GROUP BY permet de regrouper les éléments à compter selon la colonne indiquée.
--GROUP BY `frameworks`.`languagesId`;



--Exo2:
--SELECT `languages`.`name` AS `langName`, `frameworks`.`name` AS `frameworkName`
--FROM `languages`
--Au contraire des RIGHT / LEFT JOIN, la INNER JOIN est une jointure interne, qui ne renverra que les valeurs qui ont des équivalents dans les 2 tables.
--INNER JOIN `frameworks`
--ON `languages`.`id` = `frameworks`.`languagesId`;


--Exo1:
-- Ahhhh... les jointures...
-- BON en bref : les jointures servent à joindre (sans dec !) 2 tables entre elles. Ainsi leur contenu fusionneront selon les informations renseignées.
-- En première ligne on sélectionne les 2 tables à joindre ensemble en leur donnant des alias pour nommer les futurs colonnes fusionnées
--SELECT `languages`.`name` AS `langName`, `frameworks`.`name` AS `frameworkName`
-- on sélectionne ici la base de "référence" pour notre jointure. En réalité il ne s'agit pas d'une référence, mais ne vous en faites pas je sais que vous comprendrez avec la suite :)
--FROM `languages`
-- cette ligne va éclaircir le "référence" d'avant. On rélise ici un LEFT JOIN. Il s'agit d'une jointure externe (qui conservera les valeurs même si elles n'ont pas d'équivalent dans l'autre table) qui prendra comme base de jointure la table de gauche, donc ici notre FROM ! Comme il existe également RIGHT JOIN qui prend comme référence la table de droite, le FROM n'est donc pas en réalité la table de référence, d'où la simplicité d'explication ci-dessus.
--LEFT JOIN `frameworks`
-- On finit donc cette jointure en lui disant sur quels éléments la fusion doit se réaliser. Ici sur les ID des 2 tables.
--ON `languages`.`id` = `frameworks`.`languagesId`;
