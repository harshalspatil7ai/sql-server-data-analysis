select * from students;
--======================== ROW_NUMBER() ========================

-- PARTITION BY Subject
SELECT *,
       ROW_NUMBER() OVER(PARTITION BY Subject ORDER BY Marks DESC) AS Row_Number
FROM Students;

-- PARTITION BY Student_Name
SELECT *,
       ROW_NUMBER() OVER(PARTITION BY Student_Name ORDER BY Marks DESC) AS Row_Number
FROM Students;


--========================== RANK() ============================

-- PARTITION BY Subject
SELECT *,
       RANK() OVER(PARTITION BY Subject ORDER BY Marks DESC) AS Rank_Function
FROM Students;

-- PARTITION BY Student_Name
SELECT *,
       RANK() OVER(PARTITION BY Student_Name ORDER BY Marks DESC) AS Rank_Function
FROM Students;


--======================= DENSE_RANK() =========================

-- PARTITION BY Subject
SELECT *,
       DENSE_RANK() OVER(PARTITION BY Subject ORDER BY Marks DESC) AS Dense_Rank
FROM Students;

-- PARTITION BY Student_Name
SELECT *,
       DENSE_RANK() OVER(PARTITION BY Student_Name ORDER BY Marks DESC) AS Dense_Rank
FROM Students;