package com.study.service;

import com.study.dao.Student;
import com.study.mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentMapper studentMapper;
    @Override
    public List<Student> queryAllStudent() {
        List<Student> students = studentMapper.queryAllStudent();
        return students;
    }

    @Override
    public boolean insertStudent(Student student) {
        return studentMapper.insertStudent(student);
    }

    @Override
    public boolean alterStudent(Student student) {
        return studentMapper.alterStudent(student);
    }

    @Override
    public boolean deleteStudent(Student student) {
        return studentMapper.deleteStudent(student);
    }
}
