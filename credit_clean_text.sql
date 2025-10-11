CREATE TABLE credit_clean (
  person_age SMALLINT,
  person_income DECIMAL(12,2),
  person_home_ownership VARCHAR(50),
  person_emp_length SMALLINT,
  loan_intent VARCHAR(80),
  loan_grade VARCHAR(10),
  loan_amnt DECIMAL(12,2),
  loan_int_rate DECIMAL(5,2),
  loan_percent_income DECIMAL(6,2),
  cb_person_default_on_file TINYINT,
  cb_person_cred_hist_length SMALLINT,
  loan_status TINYINT
);


DROP TABLE IF EXISTS credit_clean_text;

CREATE TABLE credit_clean_text AS
SELECT
    TRIM(person_age) AS person_age,
    TRIM(person_income) AS person_income,
    TRIM(person_home_ownership) AS person_home_ownership,
    TRIM(person_emp_length) AS person_emp_length,
    TRIM(loan_intent) AS loan_intent,
    TRIM(loan_grade) AS loan_grade,
    TRIM(loan_amnt) AS loan_amnt,
    TRIM(loan_int_rate) AS loan_int_rate,
    TRIM(loan_percent_income) AS loan_percent_income,
    TRIM(cb_person_default_on_file) AS cb_person_default_on_file,
    TRIM(cb_person_cred_hist_length) AS cb_person_cred_hist_length,
    TRIM(loan_status) AS loan_status
FROM staging_credit;





SELECT * FROM credit_risk.credit_clean_text;