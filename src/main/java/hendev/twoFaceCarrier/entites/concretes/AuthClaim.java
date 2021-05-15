package hendev.twoFaceCarrier.entites.concretes;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name="AuthClaims")
public class AuthClaim {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="memberId")
	private int memberId;
	
	@Column(name="authId")
	private int authId;
}
