package com.example.demo.controller;

import com.example.demo.model.Student;
import com.example.demo.model.StudentDetail;
import com.example.demo.repository.Repo;
import com.example.demo.repository.Repo1;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/students")
public class StudentController {

    @Autowired
    Repo repo;

    @Autowired
    Repo1 repo1;

    @GetMapping("/")
public String homeRedirect() {
    return "redirect:/students/form";
}
    @GetMapping("/form")
    public String showForm() {
        return "Signup";
    }

    @GetMapping("/loginform")
    public String showLoginForm() {
        return "Login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String username,
                        @RequestParam String pwd,
                        Model model,
                        HttpSession session) {

        Student user = repo.findByUsername(username);

        if (user == null) {
            model.addAttribute("error", "Username does not exist");
            return "Login";
        }

        if (!user.getPwd().equals(pwd)) {
            model.addAttribute("error", "Invalid password");
            return "Login";
        }

        session.setAttribute("loggedInUser", user);
        return "redirect:/students/dashboard";
    }

    @GetMapping("/dashboard")
    public String showDashboard(HttpSession session, Model model) {
        Student loggedInUser = (Student) session.getAttribute("loggedInUser");
        if (loggedInUser == null) {
            return "redirect:/students/loginform";
        }

        model.addAttribute("username", loggedInUser.getUsername());
        return "dashboard";
    }

    @PostMapping("/Signup")
    public String addStudent(@ModelAttribute Student stud, Model model) {
        Student existingUser = repo.findByUsername(stud.getUsername());

        if (existingUser != null) {
            model.addAttribute("error", "Username already exists!");
            return "Signup";
        }

        repo.save(stud);
        return "Login";
    }

    @GetMapping("/app")
    public String showStudentForm(HttpSession session, Model model) {
        Student loggedInUser = (Student) session.getAttribute("loggedInUser");
        if (loggedInUser == null) {
            return "redirect:/students/loginform";
        }

        StudentDetail detail = repo1.findByStudent(loggedInUser);
        if (detail == null) detail = new StudentDetail();

        model.addAttribute("studentDetail", detail);
        return "App";
    }

    @PostMapping("/App")
    public String addDetails(@ModelAttribute StudentDetail studetail, HttpSession session) {
        Student student = (Student) session.getAttribute("loggedInUser");
        if (student == null) return "redirect:/students/loginform";

        StudentDetail existing = repo1.findByStudent(student);
        if (existing != null) {
            studetail.setId(existing.getId());
        }

        studetail.setStudent(student);
        repo1.save(studetail);

        return "redirect:/students/dashboard";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/students/loginform";
    }

    @PostMapping("/delete")
    public String deleteAccount(HttpSession session) {
        Student student = (Student) session.getAttribute("loggedInUser");

        if (student != null) {
            StudentDetail detail = repo1.findByStudent(student);
            if (detail != null) repo1.delete(detail);
            repo.delete(student);
            session.invalidate();
        }

        return "redirect:/students/form";
    }
}
