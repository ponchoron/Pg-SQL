select lawyer_name.lawyer_name as Lawyer_name , lawyer.sdate as Lawyer_start_date, lawyer.partner as Partner_since
from(select max(number_of_files) as Maximal_files, lawyer_files.lawyer_name
      from (select count(lname) as number_of_files, lonfile.lname as lawyer_name
	    from lonfile
            group by lonfile.lname) as lawyer_files
      group by lawyer_files.lawyer_name
      having  max(number_of_files) > 3) as lawyer_name, lawyer
where lawyer.lname = lawyer_name.lawyer_name 