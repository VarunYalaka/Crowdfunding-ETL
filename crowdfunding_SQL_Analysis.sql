-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
--drop table backer_counts
SELECT cf_id, sum(backers_count) as sum_of_backercounts
FROM campaign
WHERE 
outcome = 'live'
GROUP BY cf_id
ORDER BY sum(backers_count) Desc;

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT cf_id, count(backer_id) as count
FROM backers 
GROUP BY cf_id
ORDER BY count Desc;


-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
SELECT c.first_name, c.last_name, c.email, ((ca.goal) - (ca.pledged)) AS "Remaining_Goal_Amount"
INTO email_contacts_remaining_goal_amount
FROM contacts as c
INNER JOIN campaign as ca 
ON c.contact_id = ca.contact_id
Where outcome = 'live' 
ORDER BY "Remaining_Goal_Amount" DESC

-- Check the table
select * from email_contacts_remaining_goal_amount

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer 
--in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 

SELECT b.email, b.first_name, b.last_name, b.cf_id, ca.company_name, ca.description, ca.end_date,
((ca.goal) - (ca.pledged)) AS "Left of Goal"
INTO email_backers_remaining_goal_amount
FROM  campaign as ca  
INNER JOIN backers as b 
ON b.cf_id = ca.cf_id
Where ca.outcome = 'live'
ORDER BY b.last_name, b.first_name  ASC;

-- Check the table
select * from email_backers_remaining_goal_amount
