package dbUtils;

import java.util.Date;

/**
 * javabean ӵ��get��set������������
 * @author Administrator
 *
 */
public class MyStudent {
	private String id;
	private String name;
	private Date bornDate;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBornDate() {
		return bornDate;
	}
	public void setBornDate(Date bornDate) {
		this.bornDate = bornDate;
	}
	
}
