package com.SpringBootCRUD.SpringBootCRUD;

// Didn't Import student and course classes as it is in the same package.

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface StudentRepository extends JpaRepository<Student, Long> {
    @Query("SELECT s FROM Student s INNER JOIN s.courses c WHERE c.courseName = :courseName")
    List<Student> findStudentsByCourseName(String courseName);

    List<Student> findByNameContainingIgnoreCase(String namePart);
}

