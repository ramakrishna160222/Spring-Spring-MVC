package com.p1;

import java.util.List;
import java.util.Map;

public interface StudentDao {
	public int saveStudent(Student e);
	public int updateStudent(int e);
	public int deleteStudent(int x);
	public List<Map<String,Object>> allStudent();
	public List<Student>findStudentById(int x);
	

}
