--Exo4: Afficher les langages ayant plus de 3 frameworks.

SELECT `languages` . `name`, COUNT(`frameworks`.`languagesId`) AS `numberFrameworks`
FROM `languages`
INNER JOIN `frameworks`
ON `languages`.`id` = `frameworks` . `languagesId`
GROUP BY `languages`. `id`
HAVING `numberFrameworks` > 3;
