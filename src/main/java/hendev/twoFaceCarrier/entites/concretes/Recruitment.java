package hendev.twoFaceCarrier.entites.concretes;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import hendev.twoFaceCarrier.entites.abstracts.IEntity;
import lombok.Data;

@Data
@Entity
@Table(name="Recruitments")
public class Recruitment implements IEntity{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="employerId")
	private int employerId;
	
	@Column(name="description")
	private String description;
	
	@Column(name="recrumentStartDate")
	private Date recrumentStartDate;
	
	@Column(name="recrumentEndDate")
	private Date recrumentEndDate;
	
	@Column(name="active")
	private boolean active;
}
