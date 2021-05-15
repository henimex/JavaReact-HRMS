package hendev.twoFaceCarrier.entites.concretes;

import java.util.Date;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name="Users")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="username")
	private String username;
	
	@Column(name="passwordSalt")
	private String passwordSalt;
	
	@Column(name="passwordHash")
	private String passwordHash;
	
	@Column(name="password")
	private String password;
	
	@Column(name="registerDate")
	private Date registerDate;
	
	@Column(name="sysConfirmCode")
	private String sysConfirmCode;
	
	@Column(name="userConfirmCode")
	private String userConfirmCode;
	
	@Column(name="confirmation")
	private boolean confirmation;
	
	@Column(name="active")
	private boolean active;
}
