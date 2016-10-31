select file.fname as File_name, file.lname as Lawyer_name  payment as Payment_amount
from File 
inner join Billing on file.fid = billing.fid
inner join lawyer on lawyer.lname = billing.lname
where file.status notnull and Extract(month from file.status) = Extract(month from Billing.bdate) and (select payment  from calcbilling(date_part('month',billing.bdate) , date_part('year',billing.bdate))) 
limit 1

