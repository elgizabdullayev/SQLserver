select c.first_name,c.last_name, c.father_name, g.gender, c.fin_code, b.blood_group, c.phone, c.mail, c.date_of_birth, a.date_of_acceptance, a.date_of_registration,d.diagnose, sw.first_name as doctor_name, sw.last_name as doctor_last_name,sw.father_name as doctor_father_name, s.treatment,p.procedures, sd.status_doctor, s.date_of_start from [patients.clients] as c
join [patients.attend_doctor] as a on c.client_id = a.id_client 
join [patients.story] as s on c.client_id = s.id_client
join [patients.gender] as g on c.id_sex = g.id_gender
join [staff.workers] as sw on sw.id_staff = a.id_staff
join [patients.diagnose] as d on d.id_diagnose = a.id_diagnose
join [patients.procedures] as p on p.id_procedures = s.id_procedures
join [patients.blood_group] as b on b.id_blood_group = c.id_blood_group
join [patients.status_doctor] as sd on sd.id_status_doctor = a.id_status_doctor