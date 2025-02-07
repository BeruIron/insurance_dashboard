INSERT INTO public.company(
	id, company_name, contact_email, phone_number, address, industry_type, license_number)
	VALUES (6,'东方科技有限公司', 'info@dongfangtech.com', '+86 10 1234 5678', '北京市朝阳区科技路10号', 'Technology', 'CN12345678');



INSERT INTO public.quotation (
    id, company_id, insurance_broker_id, date_issued, proposed_premium, sum_insured, coverage_details, quotation_status, acceptance_date
)
VALUES (
    7, 4, 3, '2025-01-03', 300.00, 10000.00, 'Personal Accident Coverage (Accident, Disability, Death)', 'Pending', NULL
);



SELECT * FROM public.employee;
INSERT INTO public.employee(
	id, company_id, staff_id, full_name, date_of_birth, gender, phone_number, email, nationality)
	VALUES(87, 4, 'EMP087', '张强', '1992-09-30', 'Male', '+86 139 3456 7890', 'zhang.qiang@dongfangtech.com', 'Chinesse'),
		   (88, 4, 'EMP088', '刘洋', '1988-11-25', 'Female', '+86 139 4567 8901', 'liu.yang@dongfangtech.com', 'Chinesse'),
		   (89, 4, 'EMP089', '陈刚', '1987-05-12', 'Male', '+86 139 5678 9012', 'chen.gang@dongfangtech.com', 'Chinesse');