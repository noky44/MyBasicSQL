CREATE VIEW vw_goods AS
  SELECT g.id_goods, g.goods
  FROM goods AS g

CREATE VIEW vw_goods_categories AS
  SELECT c.id_categories, c.categories_name
  FROM goods_categories `vw_goods_categories` AS c

SELECT vc.categories_name, COUNT(vg.id_categories)
FROM vw_goods AS vg
  INNER JOIN vw_goods_categories AS vc
    ON vg.id_categories = vc.id_categories
  GROUP BY vc.categories_name

SELECT vc.categories_name, COUNT (vg.id_categories)
FROM vw_goods AS vg
  LEFT JOIN vw_goods_categories AS vc
    ON vg.id_categories = vc.id_categories
  GROUP BY vc.categories_name