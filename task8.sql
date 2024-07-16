select * from sales

-----10 querry questions using REGEX
	

1)From ship_mode we have to find standard class and first class
select order_id, ship_mode from sales where ship_mode ~* '^[standard class - first class]'


2)From customer_id, 2nd character between h to v, last digit should be 5 or 1 0
select order_id, ship_mode, customer_id from sales where customer_id ~* '^[a-z][h-v]-[0-9]{4}(5|1)$'


3)From order_id year between 2015 or 2017, last two digit between 4 to 8, last digit shpuld be 7 or 8 or 1
select order_id,product_id, sales from sales where order_id ~* '^us-201(5|7)-[0-9]{4}[4-8](7|8|1)$'


4)Quantity should be 7 or 3
select order_id, ship_mode, sales, quantity from sales where quantity::varchar ~* '^(7|3)$'


5)data of first class from ship_mode ?
select ship_mode from sales where ship_mode ~* 'F[a-z]{4} [a-z]{5}'


6)DATA OF COUSTOMER ID WHCIH IS START WITH KM...
select customer_id from sales where customer_id ~* '^K(M|P)'


7)the data of 9 th month from every year fro order_date
select order_date from sales where order_date::varchar ~* '^201(4|5|6)-09-[0-9]{2}$'


8)find age from customer first only 2-4 and then last digit 0
select age:: varchar from customer where age:: varchar ~*'[2-4]0$'


9)find sales from sales data
select order_id, sales:: varchar from sales where sales:: varchar ~* '^[0-5](2|7|8)[0-9].[0-9]{2}$'


10)find quantity from sales data 2,8
select quantity:: varchar from sales where quantity:: varchar ~*'(2|8)$'



