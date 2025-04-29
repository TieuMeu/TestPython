SELECT 
    si.roll_number,
    si.name
FROM student_information si
JOIN examination_marks em1 ON si.roll_number = em1.roll_number
JOIN examination_marks em2 ON si.roll_number = em2.roll_number
JOIN examination_marks em3 ON si.roll_number = em3.roll_number
JOIN examination_marks em4 ON si.roll_number = em4.roll_number
WHERE (em1.subject_one + em1.subject_two + em1.subject_three) < 100
ORDER BY si.roll_number;