package com.study.service;

import com.study.dao.Student;

import java.util.List;

public interface StudentService {
    List<Student> queryAllStudent();

    boolean insertStudent(Student student);

    boolean alterStudent(Student student);

    boolean deleteStudent(Student student);
}
