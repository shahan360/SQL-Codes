"""
Table: Activity

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| machine_id     | int     |
| process_id     | int     |
| activity_type  | enum    |
| timestamp      | float   |
+----------------+---------+
The table shows the user activities for a factory website.
(machine_id, process_id, activity_type) is the primary key (combination of columns with unique values) of this table.
machine_id is the ID of a machine.
process_id is the ID of a process running on the machine with ID machine_id.
activity_type is an ENUM (category) of type ('start', 'end').
timestamp is a float representing the current time in seconds.
'start' means the machine starts the process at the given timestamp and 'end' means the machine ends the process at the given timestamp.
The 'start' timestamp will always be before the 'end' timestamp for every (machine_id, process_id) pair.
 

There is a factory website that has several machines each running the same number of processes. Write a solution to find the average time each machine takes to complete a process.

The time to complete a process is the 'end' timestamp minus the 'start' timestamp. The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run.

The resulting table should have the machine_id along with the average time as processing_time, which should be rounded to 3 decimal places.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Activity table:
+------------+------------+---------------+-----------+
| machine_id | process_id | activity_type | timestamp |
+------------+------------+---------------+-----------+
| 0          | 0          | start         | 0.712     |
| 0          | 0          | end           | 1.520     |
| 0          | 1          | start         | 3.140     |
| 0          | 1          | end           | 4.120     |
| 1          | 0          | start         | 0.550     |
| 1          | 0          | end           | 1.550     |
| 1          | 1          | start         | 0.430     |
| 1          | 1          | end           | 1.420     |
| 2          | 0          | start         | 4.100     |
| 2          | 0          | end           | 4.512     |
| 2          | 1          | start         | 2.500     |
| 2          | 1          | end           | 5.000     |
+------------+------------+---------------+-----------+
Output: 
+------------+-----------------+
| machine_id | processing_time |
+------------+-----------------+
| 0          | 0.894           |
| 1          | 0.995           |
| 2          | 1.456           |
+------------+-----------------+
Explanation: 
There are 3 machines running 2 processes each.
Machine 0's average time is ((1.520 - 0.712) + (4.120 - 3.140)) / 2 = 0.894
Machine 1's average time is ((1.550 - 0.550) + (1.420 - 0.430)) / 2 = 0.995
Machine 2's average time is ((4.512 - 4.100) + (5.000 - 2.500)) / 2 = 1.456
"""

-- Select machine_id and calculate the average processing time for each machine
SELECT 
    machine_id, 
    
    -- Round the average processing time to three decimal places
    ROUND(AVG(end_time - start_time) * 1000) / 1000.0 AS processing_time
    
FROM (
    -- Subquery to calculate start and end times for each process on each machine
    SELECT 
        machine_id,
        process_id,
        
        -- Calculate the maximum timestamp for 'start' activity type
        MAX(CASE WHEN activity_type = 'start' THEN timestamp END) AS start_time,
        
        -- Calculate the maximum timestamp for 'end' activity type
        MAX(CASE WHEN activity_type = 'end' THEN timestamp END) AS end_time
        
    -- Retrieve data from the Activity table
    FROM 
        Activity
    
    -- Group the data by machine_id and process_id to get unique combinations
    GROUP BY 
        machine_id,
        process_id
) AS sub

-- Group the results by machine_id to get the average processing time for each machine
GROUP BY 
    machine_id;

-- Solution 2
SELECT a1.machine_id, ROUND(CAST(SUM(a2.timestamp - a1.timestamp) AS NUMERIC) / COUNT(*), 3) AS processing_time
FROM Activity a1
INNER JOIN Activity a2
ON a1.machine_id = a2.machine_id 
AND a1.process_Id = a2.process_id 
AND a1.timestamp < a2.timestamp
GROUP BY a1.machine_id;