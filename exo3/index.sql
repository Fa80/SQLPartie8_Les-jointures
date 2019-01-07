-- Exo3: Afficher le nombre de framework qu'a un langage.

SELECT `languages` . `name` , COUNT(`frameworks`.`languagesId`) AS `numberFrameworks`
FROM `languages`
LEFT JOIN `frameworks`
ON `languages`.`id` = `frameworks` . `languagesId`
GROUP BY `languages`. `id`;
