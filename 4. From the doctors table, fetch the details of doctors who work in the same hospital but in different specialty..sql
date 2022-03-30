SELECT d1.name, d1.speciality, d1.hospital
FROM doctors d1
JOIN doctors d2
ON d1.hospital = d2.hospital 
AND d1.speciality <> d2.speciality 
AND d1.id <> d2.id;