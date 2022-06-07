package com.p1;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import org.springframework.jdbc.core.JdbcTemplate;

public class StudentDaoImpl implements StudentDao{
	JdbcTemplate jdbc;

	public void setJdbc(JdbcTemplate jdbc) {
		this.jdbc = jdbc;
	}
	
	public StudentDaoImpl() {
		System.out.println("Student Dao Impl Called...");
	}
	
	@Override
	public int saveStudent(Student e) {
		String query="insert into student values(?,?,?)";
		int x=jdbc.update(query,e.getSid(),e.getSname(),e.getLoc());
		return x;
	}

	@Override
	public int updateStudent(int e) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter new Location");
		String loc;
		loc=sc.next();
		String query="update student set loc='"+loc+"' where sid="+e;
		int x=jdbc.update(query);
		return x;		
	}

	@Override
	public int deleteStudent(int e) {
		String q="delete from student where sid="+e;
		int x=jdbc.update(q);
		return x;
	}

	@Override
	public List<Map<String, Object>> allStudent() {
		return jdbc.queryForList("select * from student");
		
	}

	@Override
	public List<Student> findStudentById(int x) {
		String s="select * from student where sid="+x;
		List l=jdbc.queryForList(s);
		return l;
	}
	
	
	
	

}
