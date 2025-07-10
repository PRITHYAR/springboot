package com.example.demo;



import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;



import com.example.demo.controller.StudentController;

import com.example.demo.model.Student;

import com.example.demo.repository.Repo;
import com.example.demo.repository.Repo1;




import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;

import org.springframework.boot.test.mock.mockito.MockBean;

import org.springframework.test.web.servlet.MockMvc;



import static org.mockito.Mockito.*;



@WebMvcTest(StudentController.class)

public class StudentControllerTest {



    @Autowired

    private MockMvc mockMvc;



    @SuppressWarnings("removal")

	@MockBean

    private Repo repo;



    @SuppressWarnings("removal")

	@MockBean

    private Repo1 repo1;



    @Test

    public void testShowSignupPage() throws Exception {

        mockMvc.perform(get("/students/form"))

               .andExpect(status().isOk())

               .andExpect(view().name("Signup"));

    }



    @Test

    public void testSignupNewUser() throws Exception {

        when(repo.findByUsername("testuser")).thenReturn(null);



        mockMvc.perform(post("/students/Signup")

                .param("username", "testuser")

                .param("pwd", "pass123"))

               .andExpect(status().isOk())

               .andExpect(view().name("Login"));



        verify(repo, times(1)).save(any(Student.class));

    }

}