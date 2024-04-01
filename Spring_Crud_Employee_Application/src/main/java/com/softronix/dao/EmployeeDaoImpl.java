package com.softronix.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.softronix.entity.Employee;
@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public String add(Employee emp) {
		String status="";
		
		Employee employee=search(emp.getEid());
		
		if(employee==null)
		{
			int rowCount=jdbcTemplate.update("insert into employee values('"+emp.getEid()+"','"+emp.getEname()+"','"+emp.getEsal()+"','"+emp.getEaddr()+"')");
			if(rowCount==1)
			{
				status="success";
			}
			else
			{
				status="failuer";
			}
		}
		else
		{
			status="existed";
		}
	  	
		return status;
	}

	@Override
	public Employee search(String eid) {
		Employee emp=null;
		List<Employee> employeeList=jdbcTemplate.query("select * from employee where EID='"+eid+"'",(rs,rowNum)->{
		
			Employee emp1=new Employee();
			emp1.setEid(rs.getString("EID"));
			emp1.setEname(rs.getString("ENAME"));
			emp1.setEsal(rs.getString("ESAL"));
			emp1.setEaddr(rs.getString("EADDR"));
			
			return emp1;
			});
		if(employeeList.isEmpty()==true)
		{
			emp=null;
		}
		else
		{
			emp=employeeList.get(0);
		}
		
		return emp;
	}

	@Override
	public String update(Employee emp) {
		String status="";
		
		int rowCount=jdbcTemplate.update("update employee set ENAME='"+emp.getEname()+"',ESAL='"+emp.getEsal()+"',EADDR='"+emp.getEaddr()+"' where EID='"+emp.getEid()+"'");
		if(rowCount==1)
		{
			status="success";
		}
		else
		{
			status="failuer";
		}
		
		return status;
	}

	@Override
	public String delete(String eid) {
		String status="";
		Employee emp=search(eid);
		if(emp==null)
		{
			status="notexisted";
		}
		else
		{
			int rowCount=jdbcTemplate.update("detele from employee where EID='"+emp.getEid()+"'");
			if(rowCount==1)
			{
				status="success";
			}
			else
			{
				status="failuer";
			}
		}
		
		
		return status;
		
		
	}

}
