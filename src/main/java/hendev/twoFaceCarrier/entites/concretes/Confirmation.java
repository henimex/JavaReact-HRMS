package hendev.twoFaceCarrier.entites.concretes;

import java.util.Date;
import javax.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="Confirmations")
public class Confirmation {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="userId")
	private int userId;
	
	@Column(name="generatedCode")
	private String generatedCode;
	
	@Column(name="userCode")
	private String userCode;
	
	@Column(name="verificationDate")
	private Date verificationDate;
}
