package com.SpringBootCRUD.SpringBootCRUD;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/courses")
public class CourseController {

    @Autowired
    private CourseService courseService;

    @Autowired
    private StudentService studentService;

    // Show form to add a new course
    @GetMapping("/new")
    public String showCourseForm(Model model) {
        model.addAttribute("course", new Course());
        return "course-form";
    }

    // Save new course
    @PostMapping("/save")
    public String saveCourse(@ModelAttribute("course") Course course) {
        courseService.saveCourse(course);
        return "redirect:/courses/list";
    }

    // Display list of all courses
    @GetMapping("/list")
    public String listCourses(Model model) {
        List<Course> courses = courseService.getAllCourses();
        model.addAttribute("courses", courses);
        return "course-list";
    }

    // Edit course
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") Long id, Model model) {
        Course course = courseService.getCourseById(id);
        model.addAttribute("course", course);
        return "course-form";
    }

    // Update course (uses same save method)
    @PostMapping("/update")
    public String updateCourse(@ModelAttribute("course") Course course) {
        courseService.saveCourse(course);
        return "redirect:/courses/list";
    }

    // View students enrolled in each course (example of join query usage)
    @GetMapping("/students")
    public String viewStudentsInCourses(Model model) {
        // Example logic to fetch students enrolled in courses
        List<Student> students = studentService.getAllStudents();
        model.addAttribute("students", students);
            return "students-list";
        }
    }
