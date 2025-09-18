use banking1;
desc loan;
select * from loan;

-- 1) Total loan Funded Amount 
select sum(Loan_amount) as "Total Loan Funded "
from loan;

-- 2) Total Loan Count
select count(Account_id) as "Total Loan Count"
from loan;

-- 3) Total Interest
select sum(interest)
from loan;

-- 4) Total Collection
select sum(Collection) as "Total Collection"
from loan;


-- Top 10 Branch Wise Total Revenue
select Branch_name, sum(Loan_amount + Interest) as "Total Revenue"
from loan
group by Branch_name
order by sum(Loan_amount + Interest) desc limit 10;

-- Top 10 State Wise Loan
select State, sum(loan_amount) as Total_loan
from loan
group by State
order by sum(loan_amount) desc limit 10;

-- Religion Wise Loan
select Religion, SUM(Loan_Amount) AS Total_Loan
from loan
GROUP BY Religion;

-- Product Group Wise Loan
select Purpos_Category, sum(loan_amount) as "Total loan"
from loan
group by Purpos_Category
order by sum(loan_amount) desc;

-- Grade Wise Loan
select grade, sum(loan_amount) as Total_loan
from loan
group by grade
order by sum(loan_amount) desc;

-- Year Wise Disbursement Trend
select DisbursementFy as year, sum(loan_amount) as total_disbursed
from loan
group by DisbursementFy;



-- Gender wise loan
select gender_id, sum(loan_amount) as Total_loan
from loan
group by gender_id;
