package hendev.twoFaceCarrier.entites.concretes;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name="CorpTypes")
public class CorpType {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="corpDef")
	private String corpDef;
}