create or replace function calcbilling(month int , year int) 
returns table(lname varchar, fid numeric, payment bigint) as
$$
BEGIN
	RETURN QUERY
	select  Billing.lname as Lawyer_name, billing.fid as File_number , sum(billing.hours*lawyer.hbilling) as Payment from billing   
	inner join lawyer on billing.lname = lawyer.lname
	where Extract(month from billing.bdate) = month and Extract(year from billing.bdate) = year
	group by billing.fid , billing.lname;
 
END 
$$
LANGUAGE plpgsql;