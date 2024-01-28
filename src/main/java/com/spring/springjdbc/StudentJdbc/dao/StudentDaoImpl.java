package com.spring.springjdbc.StudentJdbc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.spring.springjdbc.StudentJdbc.model.Student;

public class StudentDaoImpl implements StudentDao {
private JdbcTemplate jdbcTemplate;
	
	
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public int create(Student student) {

		String sql = "insert into student1(stu_name,stu_email,stu_course) values(?,?,?)";

		try {

			int counter = jdbcTemplate.update(sql,
					new Object[] { student.getName(), student.getEmail(), student.getCourse() });

			return counter;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public List<Student> read() {
		List<Student> studentList = jdbcTemplate.query("SELECT * FROM STUDENT1", new RowMapper<Student>() {

			@Override
			public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
				Student student = new Student();

				student.setId(rs.getInt("stu_id"));
				student.setName(rs.getString("stu_name"));
				student.setEmail(rs.getString("stu_email"));
				student.setCourse(rs.getString("stu_course"));

				return student;
			}

		});

		return studentList;
	}

	@Override
	public List<Student> findStudentById(int studentId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(Student student) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int delete(int studentId) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
