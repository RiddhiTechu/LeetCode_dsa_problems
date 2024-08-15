# Write your MySQL query statement below

SELECT CUSTOMER_ID , COUNT(*) AS COUNT_NO_TRANS
FROM VISITS V LEFT JOIN TRANSACTIONS T
ON V.VISIT_ID = T.VISIT_ID
WHERE T.TRANSACTION_ID IS NULL
GROUP BY CUSTOMER_ID