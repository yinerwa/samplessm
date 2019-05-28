package com.study.dao;

public class Student {
    private String stuNumber;
    private String stuName;
    private int sex;
    private int score;

    public Student() {
    }

    public Student(String stuNumber, String stuName) {
        this.stuNumber = stuNumber;
        this.stuName = stuName;
    }

    public Student(String stuNumber, String stuName, int sex, int score) {
        this.stuNumber = stuNumber;
        this.stuName = stuName;
        this.sex = sex;
        this.score = score;
    }

    public Student(String stuName, int sex, int score) {
        this.stuName = stuName;
        this.sex = sex;
        this.score = score;
    }

    public String getStuNumber() {
        return stuNumber;
    }

    public void setStuNumber(String stuNumber) {
        this.stuNumber = stuNumber;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "Student{" +
                "stuNumber='" + stuNumber + '\'' +
                ", stuName='" + stuName + '\'' +
                ", sex=" + sex +
                ", score=" + score +
                '}';
    }
}
