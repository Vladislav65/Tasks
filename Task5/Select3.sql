-- Написать запрос, отражающий все транзакции, где передача денег осуществлялась между
-- представителями одного города
/*
select t.transaction_id, p1.fullname as from_person, p2.fullname as to_person, t.amount
from transactions t join persons p1 on t.from_person_id = p1.id
join persons p2 on t.to_person_id = p2.id
where p1.city_id = p2.city_id
*/