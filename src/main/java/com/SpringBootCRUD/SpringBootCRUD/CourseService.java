package com.SpringBootCRUD.SpringBootCRUD;

import java.util.List;
public interface CourseService {
    List<Course> getAllCourses();
    Course getCourseById(Long id);
    Course saveCourse(Course course);
    Course updateCourse(Course course);
    void deleteCourse(Long id);
}
