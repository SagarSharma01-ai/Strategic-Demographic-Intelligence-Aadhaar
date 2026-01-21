use aadhaar_enrolment;
-- drop table aadhaar_enrolment;

## AADHAR ENROLMENT IMPORT  
select * from `data_aadhar_enrolment_0_500000`;
select count(*) from `data_aadhar_enrolment_0_500000`;

select * from `data_aadhar_enrolment_500000_1000000`;
select count(*) from `data_aadhar_enrolment_500000_1000000`;

select * from `data_aadhar_enrolment_1000000_1006029`;
select count(*) from `data_aadhar_enrolment_1000000_1006029`;

# Append all 3 files from Enrolment Dataset
# Total -- 1006029 row total imported

select * from `main_aadhaar_enrolment` order by date desc limit 1;
select count(*) from `main_aadhaar_enrolment`;

select * from `main_aadhaar_enrolment`
where pincode = 721517 and date = '31-12-2025';

## Aadhaar Demographic
select * from `aadhar_demographic_0_500000`;
select count(*) from `aadhar_demographic_0_500000`;

select * from `aadhar_demographic_500000_1000000`;
select count(*) from `aadhar_demographic_500000_1000000`;

select * from `aadhar_demographic_1000000_1500000`;
select count(*) from `aadhar_demographic_1000000_1500000`;

select * from `aadhar_demographic_1500000_2000000`;
select count(*) from `aadhar_demographic_1500000_2000000`;

select * from `aadhar_demographic_2000000_2071700`;
select count(*) from `aadhar_demographic_2000000_2071700`;  



# Append all 5 files from demographic dataset
# total -- 2071700 row total imported

select * from `main_aadhaar_demographic`;
select count(*) from `main_aadhaar_demographic`;



# Aadhar Biometric Dataset
select * from `aadhar_biometric_0_500000`;
select count(*) from `aadhar_biometric_0_500000`;

select * from `aadhar_biometric_500000_1000000`;
select count(*) from `aadhar_biometric_500000_1000000`;

select * from `aadhar_biometric_1000000_1500000`;
select count(*) from  `aadhar_biometric_1000000_1500000`;

select * from `aadhar_biometric_1500000_1861108`;
select count(*) from `aadhar_biometric_1500000_1861108`;


# Append all 4 files from Biometric dataset
# Total -- 1861108 row total imported
select * from `main_aadhaar_biometric`;
select count(*) from `main_aadhaar_biometric`;


# Main Working File 

select * from `main_aadhaar_enrolment`;
select count(*) from `main_aadhaar_enrolment`; 
describe `main_aadhaar_enrolment`; 

select * from `main_aadhaar_demographic`;
select count(*) from `main_aadhaar_demographic`;

select * from `main_aadhaar_biometric`;
select count(*) from `main_aadhaar_biometric`;


-- CLEAN DATA 

-- Enrolment Table fix
ALTER TABLE clean_aadhaar_enrolment MODIFY date DATE;

-- Demographic Table fix
ALTER TABLE clean_aadhaar_demographic MODIFY date DATE;

-- Biometric Table fix
ALTER TABLE clean_aadhaar_biometric MODIFY date DATE;

select * from `clean_aadhaar_enrolment`;
select count(*) from `clean_aadhaar_enrolment`;
describe `clean_aadhaar_enrolment`;

select * from `clean_aadhaar_demographic`;
select count(*) from `clean_aadhaar_demographic`;
describe `clean_aadhaar_demographic`;

select * from `clean_aadhaar_enrolment`;
select count(*) from `clean_aadhaar_biometric`;
describe `clean_aadhaar_enrolment`;