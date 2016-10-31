create or replace function trigf() returns trigger as $$
        begin

	perform 1 from file where File.lname = new.lname limit 1 ;
	if found then
	begin
	    raise notice 'new raw inserted';  
        end;		
	else
	begin
	if exists (select 1 from lonfile where lonfile.lname = new.lname) then
	     begin
	      raise notice 'update can continue';  
	    end;
	  else 
	    raise exception 'Lawyer name does not exists';  
	end if;
	 end;        
	 
	end if;
	return new;
        end;
$$ LANGUAGE plpgsql;