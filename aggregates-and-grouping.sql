-- 1. How many suppliers are there? Use a query!
select count(*) as "suppliers amount"
from northwind.suppliers;

-- 2. What is the sum of all the employee's salaries?
select sum(Salary) 
from northwind.employees;

-- 3. What is the price of the cheapest item that Northwind sells?
select min(UnitPrice)
from northwind.products;

-- 4. What is the average price of items that Northwind sells?
select avg(UnitPrice)
from northwind.products;

-- 5. What is the price of the most expensive item that Northwind sells?
select max(UnitPrice)
from northwind.products;

-- 6. What is the supplier ID of each supplier and the number of items they
-- supply? You can answer this query by only looking at the Products table.
select SupplierID, count(ProductName)
from northwind.products
group by SupplierID;

-- 7. What is the category ID of each category and the average price of each item
-- in the category? You can answer this query by only looking at the Products
-- table.
select CategoryID, avg(UnitPrice)
from northwind.products
group by CategoryID;

-- 8. For suppliers that provide at least 5 items to Northwind, what is the
-- supplier ID of each supplier and the number of items they supply? You
-- can answer this query by only looking at the Products table.
select SupplierID, count(*)
from northwind.products
group by SupplierID
having count(*)>=5;

-- 9. List the product id, product name, and inventory value (calculated by
-- multiplying unit price by the number of units on hand). Sort the results in
-- descending order by value. If two or more have the same value, order by
-- product name.

select ProductID, ProductName, UnitPrice*UnitsInStock as inventory_value
from northwind.products
order by inventory_value desc, ProductName;

