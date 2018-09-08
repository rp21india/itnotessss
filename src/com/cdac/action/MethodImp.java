package com.cdac.action;

import java.sql.Statement;

import com.cdac.beans.Feedback;
import com.cdac.beans.RegisterUser;
import com.mysql.jdbc.ResultSet;

public class MethodImp 
{
	private int i=0;
	private String query;
	private ResultSet rs=null;
	public int insertUser(Statement stmt, RegisterUser ru)
	{
		try
		{
			query="INSERT INTO register(username, email, password)VALUES('"+ru.getName()+"','"+ru.getEmail()+"','"+ru.getPassword()+"')";
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public ResultSet selectUser(Statement stmt)
	{
		try
		{
			query="SELECT * FROM register";
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet selectDownloads(Statement stmt)
	{
		try
		{
			query="SELECT * FROM downloads";
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	public ResultSet selectSyllabus(Statement stmt)
	{
		try
		{
			String query="select university.uname,course.course,syllabus.sid,syllabus.filename,syllabus.type from university join course on university.uid=course.uid join syllabus on course.cid=syllabus.cid";
			//query="SELECT * FROM syllabus";
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet selectProgram(Statement stmt)
	{
		try
		{
			String query="select technology.technology,topics.topics,program.pid,program.program from technology join topics on technology.techid=topics.techid join program on topics.tid=program.tid";
			
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet selectPpt(Statement stmt)
	{
		try
		{
			String query="select ptechnology.ptechnology,ptopics.ptopics,ppt.ppt_id,ppt.filename from ptechnology join ptopics on ptechnology.ptech_id=ptopics.ptech_id join ppt on ptopics.ptid=ppt.ptid";
			
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet selectSubject(Statement stmt)
	{
		try
		{
			String query="select university.uname,course.course,yearsem.yearsem,subject.sid,subject.sname from university join course on university.uid=course.uid join yearsem on course.cid=yearsem.cid join subject on yearsem.yid=subject.yid";
			
			//query="SELECT * FROM subject";
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet selectYearsem(Statement stmt)
	{
		try
		{
			String query="select university.uname,course.course,yearsem.yid,yearsem.yearsem from university join course on university.uid=course.uid join yearsem on course.cid=yearsem.cid";
			
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet selectCourse(Statement stmt)
	{
		try
		{
			String query="select university.uname, course.cid,course.course from university join course on university.uid=course.uid";
			//query="SELECT * FROM course";
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	public ResultSet selectUniversity(Statement stmt)
	{
		try
		{
			query="SELECT * FROM university";
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet selectEbook(Statement stmt)
	{
		try
		{
			String query="select university.uname,course.course,yearsem.yearsem,ebook.ebook_id,ebook.filename from university join course on university.uid=course.uid join yearsem on course.cid=yearsem.cid join ebook on yearsem.yid=ebook.yid";
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	

	public ResultSet selectProfile(Statement stmt)
	{
		try
		{	
			query="SELECT * FROM adminlogin";
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	public ResultSet selectNotes(Statement stmt)
	{
		try
		{
			String query="select university.uname,course.course,yearsem.yearsem,subject.sname,notes.notes_id,notes.filename,notes.type from university join course on university.uid=course.uid join yearsem on course.cid=yearsem.cid join subject on yearsem.yid=subject.yid join notes on subject.sid=notes.sid";
			
			//query="SELECT * FROM notes";
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet selectPaper(Statement stmt)
	{
		try
		{
			String query="select university.uname,course.course,yearsem.yearsem,subject.sname,paper.paper_id,paper.filename,paper.type,paper.year from university join course on university.uid=course.uid join yearsem on course.cid=yearsem.cid join subject on yearsem.yid=subject.yid join paper on subject.sid=paper.sid";

			//query="SELECT * FROM paper";
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	
	public ResultSet selectFeedback(Statement stmt)
	{
		try
		{
			query="SELECT * FROM feedback";
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	public int insertFeedBack(Statement stmt, Feedback fd)
	{
		try
		{
			query="INSERT INTO feedback(username, email,mobile,category,feedback)VALUES('"+fd.getUsername()+"','"+fd.getEmail()+"','"+fd.getMobile()+"','"+fd.getCategory()+"','"+fd.getFeed()+"')";
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int deleteNotes(Statement stmt,int nid)
	{
		try
		{
			query="delete from notes where notes_id="+nid;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int deleteSyllabus(Statement stmt,int sid)
	{
		try
		{
			query="delete from syllabus where sid="+sid;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int deletePaper(Statement stmt,int pid)
	{
		try
		{
			query="delete from paper where paper_id="+pid;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int deleteEbook(Statement stmt,int eid)
	{
		try
		{
			query="delete from ebook where ebook_id="+eid;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int deleteProgram(Statement stmt,int pid)
	{
		try
		{
			query="delete from program where pid="+pid;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int deletePpt(Statement stmt,int pid)
	{
		try
		{
			query="delete from ppt where ppt_id="+pid;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int deleteUniversity(Statement stmt,int uid)
	{
		try
		{
			query="delete from university where uid="+uid;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int deleteCourse(Statement stmt,int cid)
	{
		try
		{
			query="delete from Course where cid="+cid;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int updateebooks(Statement stmt,int ebook)
	{
		try
		{
			query="update downloads set ebooks="+ebook;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	
	public int updatenotes(Statement stmt,int notes)
	{
		try
		{
			query="update downloads set notes="+notes;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int updatepaper(Statement stmt,int paper)
	{
		try
		{
			query="update downloads set paper="+paper;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int updatesyllabus(Statement stmt,int syllabus)
	{
		try
		{
			query="update downloads set syllabus="+syllabus;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int updateppt(Statement stmt,int ppt)
	{
		try
		{
			query="update downloads set ppt="+ppt;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int deleteYearsem(Statement stmt,int yid)
	{
		try
		{
			query="delete from yearsem where cid="+yid;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int deleteSubject(Statement stmt,int sid)
	{
		try
		{
			query="delete from subject where sid="+sid;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int deleteFeedback(Statement stmt,int fid)
	{
		try
		{
			query="delete from feedback where fid="+fid;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int deleteUser(Statement stmt,int uid)
	{
		try
		{
			query="delete from register where user_id="+uid;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public int deletePost(Statement stmt,int pid)
	{
		try
		{
			query="delete from recentpost where postid="+pid;
			i=stmt.executeUpdate(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public ResultSet adminprofile(Statement stmt,String user)
	{
		try
		{
			query="SELECT * FROM adminlogin where user='"+user+"'";
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet selectPost(Statement stmt)
	{
		try
		{
			query="SELECT * FROM recentpost ";
			rs=(ResultSet) stmt.executeQuery(query);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	

}
