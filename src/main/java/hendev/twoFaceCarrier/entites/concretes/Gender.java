package hendev.twoFaceCarrier.entites.concretes;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name="Genders")
public class Gender {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="genderDef")
	private String genderDef;
}