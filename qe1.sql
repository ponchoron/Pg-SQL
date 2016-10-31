select iname as Lawyer_name, hbilling as Pay_for_hour
from lawyer
where date_part('year',partner) <= 2010