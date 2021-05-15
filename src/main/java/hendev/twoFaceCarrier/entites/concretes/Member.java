package hendev.twoFaceCarrier.entites.concretes;

import java.util.Date;
import javax.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="Members")
public class Member{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="userId")
	private int userId;
	
	@Column(name="name")
	private String name;
	
	@Column(name="lastName")
	private String lastName;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="active")
	private boolean active;
	
	@Column(name="nationalId")
	private String nationalId;
	
	@Column(name="gender")
	private short gender;
	
	@Column(name="birthdate")
	private Date birthdate;
	
	@Column(name="jobStatus")
	private short jobStatus;
}
