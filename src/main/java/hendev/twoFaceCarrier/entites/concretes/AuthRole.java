package hendev.twoFaceCarrier.entites.concretes;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name="AuthRoles")
public class AuthRole {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="roleDef")
	private String roleDef;
}
