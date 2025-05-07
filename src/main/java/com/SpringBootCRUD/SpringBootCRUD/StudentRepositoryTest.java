package com.SpringBootCRUD.SpringBootCRUD;


import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import static org.junit.jupiter.api.Assertions.*;

@DataJpaTest
public class StudentRepositoryTest {

    @Autowired
    private StudentRepository studentRepository;

    @Test
    public void testSaveAndFindStudent() {
        // Arrange
        Student student = new Student();
        student.setName("Jane Doe");
        student.setEmail("jane@example.com");

        // Act
        Student saved = studentRepository.save(student);
        Student found = studentRepository.findById(saved.getId()).orElse(null);

        // Assert
        assertNotNull(found, "Student should not be null");
        assertEquals("Jane Doe", found.getName());
        assertEquals("jane@example.com", found.getEmail());
    }
}


