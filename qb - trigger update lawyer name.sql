create trigger update_lawyer_name
    before insert or update on billing
    for each row
    execute procedure trigf();