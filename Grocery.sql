USE `mydb`;

-- Inserting unique items into the Items table
INSERT INTO Items (item_id, description, quantity_on_hand, type, location, unit)
VALUES
(1000, 'Bennet Farm free-range eggs', 29, 'Dairy', 'D12', 'dozen'),
(2000, 'Ruby\'s Kale', 3, 'Produce', 'P12', 'bunch'),
(1100, 'Freshness White beans', 13, 'Canned', 'A2', '12 ounce can'),
(1222, 'Freshness Green beans', 59, 'Canned', 'A3', '12 ounce can'),
(1223, 'Freshness Green beans', 12, 'Canned', 'A7', '36 oz can'),
(1224, 'Freshness Wax beans', 31, 'Canned', 'A3', '12 ounce can'),
(2001, 'Ruby\'s Organic Kale', 20, 'Produce', 'PO2', 'bunch');

INSERT INTO Purchase (purchase_id, items_item_id, cost, purchase_date, vendor)
VALUES
(1,1000,2.35,'2022-02-01','Bennet Farms, Rt. 17 Evansville, IL 55446'),
(2,1100,0.69,'2022-02-02','Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678'),
(3,1000,0.59,'2022-02-10','Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678'),
(4,1000,1.75,'2022-02-10','Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678'),
(5,1000,0.65,'2022-02-10','Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678'),
(6,1000,1.29,'2022-02-12','Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, AL, 34567'),
(7,1000,2.19,'2022-02-12','Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, AL, 34567'),
(8,1000,1.8,'2022-02-15','Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678');

INSERT INTO Sales (sales_id, items_item_id, quantity_sold, price, date_sold, customer)
VALUES
(1, 1000, 2, 5.49, '2022-02-02', 198765),
(2, 2000, 2, 3.99, '2022-02-02', NULL),
(3, 1100, 2, 1.49, '2022-02-02', 202900),
(4, 1000, 2, 5.99, '2022-02-04', 196777),
(5, 1100, 8, 1.49, '2022-02-07', 198765),
(6, 1000, 4, 5.49, '2022-02-11', 277177),
(7, 1100, 4, 1.49, '2022-02-11', NULL),
(8, 1222, 12, 1.29, '2022-02-12', 111000),
(9, 1224, 8, 1.55, '2022-02-12', NULL),
(10, 1223, 5, 3.49, '2022-02-13', 198765),
(11, 2001, 1, 6.99, '2022-02-13', 100988),
(12, 2001, 12, 6.99, '2022-02-14', 202900),
(13, 2000, 2, 3.99, '2022-02-15', 111000);

# Which Items Have the Highest Sales Revenue?

SELECT
    i.item_id,
    i.description AS item_description,
    SUM(s.quantity_sold * s.price) AS total_revenue
FROM
    Sales s
JOIN Items i ON s.items_item_id = i.item_id
GROUP BY
    i.item_id, i.description
ORDER BY
    total_revenue DESC;

# What Is the Purchase Cost Versus Sales Revenue for Each Item?

select 
	i.item_id,
    i.description as item_description,
    sum(p.cost) as total_purchase_cost,
    sum(s.quantity_sold *s.price) as total_sales_revenue
from
	items i
left join purchase p on i.item_id = p.items_item_id
left join sales s on i.item_id = s.items_item_id
group by 
	i.item_id, i.description;
    
# Who Are the Top Customers Based on Sales Volume?

select 
	customer,
    sum(quantity_sold*price) as total_revenue_from_customer
from 
	sales
group by
	customer
order by
	total_revenue_from_customer desc;
	
    
    








