package com.study.mapper;

import com.study.dao.Student;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface StudentMapper {

    List<Student> queryAllStudent();

    boolean insertStudent(Student student);

    boolean alterStudent(Student student);

    boolean deleteStudent(Student student);
}
