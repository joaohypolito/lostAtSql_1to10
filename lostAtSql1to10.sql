-- Chapter 1
SELECT issues FROM malfunctions;

-- Chapter 2
SELECT issues, fix FROM malfunctions;

-- Chapter 3
SELECT * FROM crew;

-- Chapter 4
SELECT * FROM crew WHERE staff_name = 'Helga Sinclair';

-- Chapter 5
SELECT * FROM pods_list WHERE status = 'functioning' AND range > 1500;

-- Chapter 6
SELECT * FROM circuits WHERE area = 'pod_03' OR status != 'green';

-- Chapter 7
SELECT COUNT(staff_name) AS crew_count, last_location FROM crew GROUP BY last_location;

-- Chapter 8
SELECT COUNT(staff_name) AS crew_count, last_location, status FROM crew GROUP BY last_location, status ORDER BY last_location, status;

-- Chapter 9
SELECT pod_group, SUM(weight_kg) AS total_weight, MAX(distance_to_pod) AS max_distance FROM crew WHERE status != 'deceased' GROUP BY pod_group;

-- Chapter 10
SELECT  staff_name, weight_kg FROM crew ORDER BY weight_kg;