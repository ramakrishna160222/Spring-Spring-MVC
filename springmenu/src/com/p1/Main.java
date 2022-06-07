package com.p1;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Scanner;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class Main {
	int sid;
	String sname,loc;
	Scanner sc=new Scanner(System.in);
	
	void addStudent(StudentDaoImpl dao) {
		System.out.println("Enter Student Details");
		sid=sc.nextInt();
		sname=sc.next();
		loc=sc.next();
		Student s=new Student(sid,sname,loc);
		int status=dao.saveStudent(s);
		System.out.println("No of entries added " + status);
	}
	void upStudent(StudentDaoImpl dao) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter student id to update");
		int num=sc.nextInt();
		int x=dao.updateStudent(num);
		System.out.println(x+" No of student rows updated");
	}
	void findStudent(StudentDaoImpl dao) {
		int num;
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter sid to find");
		num=sc.nextInt();
		List l=dao.findStudentById(num);
		System.out.println(l);
	}
	
	void delStudent(StudentDaoImpl dao) {
		Scanner sc=new Scanner(System.in);
		System.out.println("enter student id to be deleted");
		int num=sc.nextInt();
		int x=dao.deleteStudent(num);
		System.out.println(x+" no of student data deleted..");
	}
	void displayStu(StudentDaoImpl dao) {
		List<Map<String,Object>> l=dao.allStudent();
		for(Map<String,Object> entryMap: l) {
			for(Entry<String,Object> entry : entryMap.entrySet()) {
				System.out.println(entry.getKey()+": "+entry.getValue());
			}
		}
	System.out.println("---");
	}
	
	
	
	public static void main(String[] args) {
		ApplicationContext ctx=new ClassPathXmlApplicationContext("jdbc.xml");
		//BeanFactory ctx = new ClassPathXmlApplicationContext("jdbc.xml");
		StudentDaoImpl dao=(StudentDaoImpl) ctx.getBean("j");
		Main m=new Main();
		System.out.println("1.--Add a new Student");
		System.out.println("2.--Update Student");
		System.out.println("3.--Delete Student");
		System.out.println("4.--Display all Student");
		System.out.println("5.--Search a Student");
		int ch;
		Scanner sc=new Scanner(System.in);
		String ans=null;
		
		do {
			System.out.println("Select your choice");
			ch=sc.nextInt();
			switch(ch) {
			case 1:
				m.addStudent(dao);
				break;
			case 2:
				m.upStudent(dao);
				break;
			case 3:
				m.delStudent(dao);
				break;
			case 4:
				m.displayStu(dao);
				break;
			case 5:
				m.findStudent(dao);
				break;
			default:
				break;
		}
		System.out.println("do you want to do more transactions");
		ans=sc.next();
		
	}while(ans.equalsIgnoreCase("yes"));
		System.out.println("====end of Application====");
	

}
	
}

