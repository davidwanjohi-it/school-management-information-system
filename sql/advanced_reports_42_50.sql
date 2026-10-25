USE smis_db;

-- 42: Course/intake financial performance
WITH f AS (
 SELECT intake_id,SUM(amount) total_fees FROM fee_structure GROUP BY intake_id
), p AS (
 SELECT fs.intake_id,COALESCE(SUM(pay.amount),0) total_collected
 FROM fee_structure fs LEFT JOIN payment pay ON pay.fee_id=fs.fee_id
 GROUP BY fs.intake_id
)
SELECT c.course_name,i.intake_name,COALESCE(f.total_fees,0) total_fees,
 COALESCE(p.total_collected,0) total_collected,
 COALESCE(f.total_fees,0)-COALESCE(p.total_collected,0) outstanding_balance
FROM intake i JOIN course c ON i.course_id=c.course_id
LEFT JOIN f ON i.intake_id=f.intake_id LEFT JOIN p ON i.intake_id=p.intake_id
ORDER BY outstanding_balance DESC;

-- 43: Fully paid students
WITH f AS (
 SELECT e.student_id,e.intake_id,SUM(fs.amount) total_fees
 FROM enrollment e JOIN fee_structure fs ON e.intake_id=fs.intake_id
 GROUP BY e.student_id,e.intake_id
), p AS (
 SELECT e.student_id,e.intake_id,COALESCE(SUM(pay.amount),0) total_paid
 FROM enrollment e JOIN fee_structure fs ON e.intake_id=fs.intake_id
 LEFT JOIN payment pay ON pay.student_id=e.student_id AND pay.fee_id=fs.fee_id
 GROUP BY e.student_id,e.intake_id
)
SELECT s.admission_number,CONCAT(s.first_name,' ',s.last_name) student_name,
 f.total_fees,p.total_paid,f.total_fees-p.total_paid balance
FROM f JOIN p ON f.student_id=p.student_id AND f.intake_id=p.intake_id
JOIN student s ON s.student_id=f.student_id
WHERE p.total_paid>=f.total_fees;

-- 44: Partially paid students
WITH f AS (
 SELECT e.student_id,e.intake_id,SUM(fs.amount) total_fees
 FROM enrollment e JOIN fee_structure fs ON e.intake_id=fs.intake_id
 GROUP BY e.student_id,e.intake_id
), p AS (
 SELECT e.student_id,e.intake_id,COALESCE(SUM(pay.amount),0) total_paid
 FROM enrollment e JOIN fee_structure fs ON e.intake_id=fs.intake_id
 LEFT JOIN payment pay ON pay.student_id=e.student_id AND pay.fee_id=fs.fee_id
 GROUP BY e.student_id,e.intake_id
)
SELECT s.admission_number,CONCAT(s.first_name,' ',s.last_name) student_name,
 f.total_fees,p.total_paid,f.total_fees-p.total_paid balance
FROM f JOIN p ON f.student_id=p.student_id AND f.intake_id=p.intake_id
JOIN student s ON s.student_id=f.student_id
WHERE p.total_paid>0 AND p.total_paid<f.total_fees;

-- 45: Students with no payments
WITH f AS (
 SELECT e.student_id,e.intake_id,SUM(fs.amount) total_fees
 FROM enrollment e JOIN fee_structure fs ON e.intake_id=fs.intake_id
 GROUP BY e.student_id,e.intake_id
), p AS (
 SELECT e.student_id,e.intake_id,COALESCE(SUM(pay.amount),0) total_paid
 FROM enrollment e JOIN fee_structure fs ON e.intake_id=fs.intake_id
 LEFT JOIN payment pay ON pay.student_id=e.student_id AND pay.fee_id=fs.fee_id
 GROUP BY e.student_id,e.intake_id
)
SELECT s.admission_number,CONCAT(s.first_name,' ',s.last_name) student_name,
 f.total_fees,p.total_paid,f.total_fees-p.total_paid balance
FROM f JOIN p ON f.student_id=p.student_id AND f.intake_id=p.intake_id
JOIN student s ON s.student_id=f.student_id
WHERE p.total_paid=0;

-- 46: Payment transactions by date range
SELECT p.payment_id,p.payment_date,s.admission_number,
 CONCAT(s.first_name,' ',s.last_name) student_name,fs.fee_type,
 p.amount,p.payment_method,p.reference_number
FROM payment p JOIN student s ON p.student_id=s.student_id
JOIN fee_structure fs ON p.fee_id=fs.fee_id
WHERE p.payment_date>='2027-01-01' AND p.payment_date<'2027-02-01'
ORDER BY p.payment_date;

-- 47: Course revenue summary
SELECT c.course_name,COALESCE(SUM(p.amount),0) total_collected
FROM course c JOIN intake i ON c.course_id=i.course_id
JOIN fee_structure fs ON i.intake_id=fs.intake_id
LEFT JOIN payment p ON p.fee_id=fs.fee_id
GROUP BY c.course_id,c.course_name
ORDER BY total_collected DESC;

-- 48: Academic performance
SELECT s.admission_number,CONCAT(s.first_name,' ',s.last_name) student_name,
 COUNT(r.result_id) exams_taken,ROUND(AVG(r.marks),2) average_marks,
 MAX(r.marks) highest_marks,MIN(r.marks) lowest_marks
FROM result r JOIN student s ON r.student_id=s.student_id
GROUP BY s.student_id,s.admission_number,s.first_name,s.last_name
ORDER BY average_marks DESC;

-- 49: Student status dashboard
SELECT s.admission_number,CONCAT(s.first_name,' ',s.last_name) student_name,
 s.status student_status,e.status enrollment_status,c.course_name,i.intake_name,
 COALESCE(cert.status,'NO CERTIFICATE RECORD') certificate_status
FROM student s LEFT JOIN enrollment e ON s.student_id=e.student_id
LEFT JOIN intake i ON e.intake_id=i.intake_id
LEFT JOIN course c ON i.course_id=c.course_id
LEFT JOIN certificate cert ON cert.student_id=s.student_id
ORDER BY s.last_name;

-- 50: Management summary
SELECT
 (SELECT COUNT(*) FROM student) total_students,
 (SELECT COUNT(*) FROM course) total_courses,
 (SELECT COUNT(*) FROM intake) total_intakes,
 (SELECT COUNT(*) FROM enrollment) total_enrollments,
 (SELECT COUNT(*) FROM student WHERE status='ACTIVE') active_students,
 (SELECT COUNT(*) FROM graduation WHERE status='GRADUATED') graduations_completed,
 (SELECT COUNT(*) FROM certificate WHERE status='ISSUED') certificates_issued,
 (SELECT COALESCE(SUM(amount),0) FROM payment) total_payments_received;
