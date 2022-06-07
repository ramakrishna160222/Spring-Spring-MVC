package com.student;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


import com.student.Student;

public class StudentDao {
	JdbcTemplate template;

	
	
	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Student p) {
		String sql="insert into student(sid,sname,address,fee) values("+p.getSid()+",'"+p.getSname().toUpperCase()+"','"+p.getAddress()+"',"+p.getFee()+")";
		return template.update(sql);	
	}
	
	public List<Student> findStudent(int sid,int searchid){
		String sql="select * from student where sid="+searchid+"";
		return template.query(sql,new RowMapper<Student>() {
			public Student mapRow(ResultSet rs,int row) throws SQLException {
				Student e=new Student();
				e.setSid(rs.getInt(1));
				e.setSname(rs.getString(2));
				e.setAddress(rs.getString(3));
				e.setFee(rs.getDouble(4));
				return e;
			}
		});   
	}
	
	public List<Student> getStudents(){
		return template.query("select * from student",new RowMapper<Student>() {
			public Student mapRow(ResultSet rs,int row) throws SQLException {
				Student e=new Student();
				e.setSid(rs.getInt(1));
				e.setSname(rs.getString(2));
				e.setAddress(rs.getString(3));
				e.setFee(rs.getDouble(4));
				return e;
			}
		});   
	}
	
	public int delete(int sid) {
		String sql="delete from student where sid="+sid+"";
		return template.update(sql);
	}
	public Student getStudentById(int sid) {
		String sql="select * from student where sid=?";
		return template.queryForObject(sql, new Object[] {sid},new BeanPropertyRowMapper<Student>(Student.class));
	}
	
	public int update(Student p) {
		String sql="update student set sname='"+p.getSname().toUpperCase()+"',address='"+p.getAddress()+"',fee="+p.getFee()+" where sid="+p.getSid()+"";
		return template.update(sql);
	}
}
