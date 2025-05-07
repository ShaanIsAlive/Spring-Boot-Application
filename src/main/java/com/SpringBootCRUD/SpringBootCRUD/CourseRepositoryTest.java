package com.SpringBootCRUD.SpringBootCRUD;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import static org.junit.jupiter.api.Assertions.*;

@DataJpaTest
public class CourseRepositoryTest {

    @Autowired
    private CourseRepository courseRepository;

    @Test
    public void testSaveAndFindCourse() {
        // Create a new course instance
        Course course = new Course();
        course.setName("Moral Science");
        course.setDescription("Learn the basics of Moral Science");

        // Save the course
        Course savedCourse = courseRepository.save(course);

        // Retrieve the course by ID
        Course foundCourse = courseRepository.findById(savedCourse.getId()).orElse(null);

        // Assertions to verify the course was saved and retrieved correctly
        assertNotNull(foundCourse);
        assertEquals("Moral Science", foundCourse.getName());
        assertEquals("Learn the basics of Moral Science", foundCourse.getDescription());
    }
}

