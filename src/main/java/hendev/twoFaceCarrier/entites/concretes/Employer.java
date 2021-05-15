package hendev.twoFaceCarrier.entites.concretes;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name="Employers")
public class Employer{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="userId")
	private int userId;
	
	@Column(name="representerName")
	private String representerName;
	
	@Column(name="representerLastName")
	private String representerLastName;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="active")
	private boolean active;
	
	@Column(name="corpType")
	private short corpType;
	
	@Column(name="corpName")
	private String corpName;
	
	@Column(name="corpWebSite")
	private String corpWebSite;
	
	@Column(name="corpMail")
	private String corpMail;
	
	@Column(name="taxNumber")
	private String taxNumber;
	
	@Column(name="sysConfirmCode")
	private String sysConfirmCode;
	
	@Column(name="userConfirmCode")
	private String userConfirmCode;
}
