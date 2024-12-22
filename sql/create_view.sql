set search_path to ubd_20241;
create view best_selling_zones as
select z.zone_name, z.capital_town, z.climate,z.region, MAX(o.order_date) as last_selling, sum(l.quantity) AS total_quantity 
from zone z 
NATURAL JOIN wine w 
NATURAL JOIN order_line l
NATURAL JOIN customer_order o
group by z.zone_name, z.capital_town, z.climate,z.region
order by total_quantity DESC
LIMIT 5;