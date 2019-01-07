--Exo2: Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.

SELECT `frameworks`. `name`, `languages` . `name`
FROM `frameworks`
INNER JOIN `languages`
ON `frameworks` . `languagesId` = `languages` . `id`;


--INNER JOIN  permet donc de faire une jointure interne sur deux tables.
