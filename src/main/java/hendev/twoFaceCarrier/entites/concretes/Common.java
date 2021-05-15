package hendev.twoFaceCarrier.entites.concretes;

import java.util.Date;

import lombok.Data;
@Data
//no idea how to bing common fields to database

public class Common {
	private int id;
	private String name;
	private String lastName;
	private String phone;
	private String mail;
	private Date registerDate;
	private short memberType;
	private short active;
}
