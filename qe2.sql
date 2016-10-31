select file.fid as File_Number, file.iname as Primary_Lawyer_Name, count(lonfile.fid)+1 as Number_Of_lawyers
from file left outer join lonfile using(fid) 
where file.status isnull 
group by file.fid







