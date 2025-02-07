ALTER TABLE employee
ADD nationality varchar(255);


INSERT INTO public.employee(
	id, company_id, staff_id, full_name, date_of_birth, gender, phone_number, email, nationality)
	VALUES (84, '4', 'EMP084', 'ObiTon', '2004-03-12', 'male', '0884520197', 'obiton@gmail.com', 'Japanese');