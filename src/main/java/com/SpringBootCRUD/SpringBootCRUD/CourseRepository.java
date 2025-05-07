package com.SpringBootCRUD.SpringBootCRUD;

// Didn't Import student and course classes as it is in the same package.

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CourseRepository extends JpaRepository<Course, Long> {
    @Query("SELECT c FROM Course c INNER JOIN c.students s")
    List<Course> findAllCoursesWithStudents();

    @Query("SELECT c FROM Course c INNER JOIN c.students s WHERE s.name = :studentName")
    List<Course> findCoursesByStudentName(String studentName);

    @Query("SELECT c FROM Course c WHERE SIZE(c.students) > :minCount")
    List<Course> findCoursesWithMoreThanXStudents(int minCount);
}

