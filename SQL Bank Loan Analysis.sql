
--------------------Total Loan Applications------------------

SELECT COUNT(id) AS Total_Loan_Application FROM Bank_loan_data

SELECT COUNT(id) AS MTD_Total_Loan_Application FROM Bank_loan_data
WHERE MONTH(issue_date) =12 AND YEAR(issue_date) = 2021

SELECT COUNT(id) AS PMTD_Total_Loan_Application FROM Bank_loan_data
WHERE MONTH(issue_date) =11 AND YEAR(issue_date) = 2021

--------------------Total Funded Amount------------------

SELECT SUM(loan_amount) AS Total_Funded_Amount FROM Bank_loan_data

SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM Bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM Bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-------------------------Total Amount Received---------------------

SELECT SUM(total_payment) AS Total_Amount_Received FROM Bank_loan_data

SELECT SUM(total_payment) AS MTD_Total_Amount_Received FROM Bank_loan_data
WHERE MONTH(issue_date) = 12 AND  YEAR(issue_date) = 2021

SELECT SUM(total_payment) AS PMTD_Total_Amount_Received FROM Bank_loan_data
WHERE MONTH(issue_date) = 11 AND  YEAR(issue_date) = 2021

------------------------Average Interest Rate---------------------

SELECT ROUND(AVG(int_rate), 4) * 100 AS Avg_Interest_Rate FROM Bank_loan_data

SELECT ROUND(AVG(int_rate), 4) * 100 AS MTD_Avg_Interest_Rate FROM Bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

SELECT ROUND(AVG(int_rate), 4) * 100 AS PMTD_Avg_Interest_Rate FROM Bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

------------------------Average Debt-to-Income Ratio (DTI)---------------------

SELECT ROUND(AVG(dti), 4) * 100 Avg_DTI FROM Bank_loan_data

SELECT ROUND(AVG(dti), 4) * 100 MTD_Avg_DTI FROM Bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

SELECT ROUND(AVG(dti), 4) * 100 PMTD_Avg_DTI FROM Bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-----------------------------Good Loan---------------------

SELECT
  (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100)
  /
  COUNT(id) AS Good_Loan_Perecentage
FROM Bank_loan_data

SELECT COUNT(id) AS Good_Loan_Applicaions FROM Bank_loan_data
Where loan_status = 'Fully Paid' OR loan_status = 'Current'

SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount FROM Bank_loan_data
Where loan_status = 'Fully Paid' OR loan_status = 'Current'

SELECT SUM(total_payment) AS Good_Loan_Received_Amount FROM Bank_loan_data
Where loan_status = 'Fully Paid' OR loan_status = 'Current'

----------------------------Bad Loan----------------------------

SELECT
  (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100)
  /
  COUNT(id) AS Bad_Loan_Perecentage
FROM Bank_loan_data

SELECT COUNT(id) AS Bad_Loan_Applicaions FROM Bank_loan_data
Where loan_status = 'Charged Off'


SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount FROM Bank_loan_data
Where loan_status = 'Charged Off'

SELECT SUM(total_payment) AS Bad_Loan_Received_Amount FROM Bank_loan_data
Where loan_status = 'Charged Off'

-------------------------------Loan Status-------------------------------

SELECT 
 loan_status,
 COUNT(id) AS Loan_Count,
 SUM(total_payment) AS Total_Amount_Received,
 SUM(loan_amount) AS Total_Funded_Amount,
 AVG(int_rate * 100) AS Interest_Rate,
 AVG(dti * 100) AS DTI
FROM
 Bank_loan_data
GROUP BY
 loan_status

SELECT
 loan_status,
 SUM(total_payment) AS MTD_Total_Amount_Received,
 SUM(loan_amount) AS MTD_Total_Funded_Amount
FROM Bank_loan_data
Where MONTH(issue_date) =12
GROUP BY loan_status

SELECT
  MONTH(issue_date) AS Month_Number,
  DATENAME(MONTH, issue_date) AS Month_Name,
  COUNT(id) AS Total_Loan_Applicaion,
  SUM(loan_amount) AS Total_Funded_Amount,
  SUM(total_payment) AS Total_Received_Amount
From Bank_loan_data
Group BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)


SELECT
  address_state,
  COUNT(id) AS Total_Loan_Applicaion,
  SUM(loan_amount) AS Total_Funded_Amount,
  SUM(total_payment) AS Total_Received_Amount
From Bank_loan_data
Group BY address_state
ORDER BY SUM(total_payment) DESC

SELECT
  term,
  COUNT(id) AS Total_Loan_Applicaion,
  SUM(loan_amount) AS Total_Funded_Amount,
  SUM(total_payment) AS Total_Received_Amount
From Bank_loan_data
Group BY term
ORDER BY term


SELECT
  emp_length,
  COUNT(id) AS Total_Loan_Applicaion,
  SUM(loan_amount) AS Total_Funded_Amount,
  SUM(total_payment) AS Total_Received_Amount
From Bank_loan_data
Group BY emp_length
ORDER BY COUNT(id) DESC


SELECT
  purpose,
  COUNT(id) AS Total_Loan_Applicaion,
  SUM(loan_amount) AS Total_Funded_Amount,
  SUM(total_payment) AS Total_Received_Amount
From Bank_loan_data
Group BY purpose
ORDER BY COUNT(id) DESC


SELECT
  home_ownership,
  COUNT(id) AS Total_Loan_Applicaion,
  SUM(loan_amount) AS Total_Funded_Amount,
  SUM(total_payment) AS Total_Received_Amount
From Bank_loan_data
Group BY home_ownership
ORDER BY COUNT(id) DESC


SELECT * FROM Bank_loan_data

