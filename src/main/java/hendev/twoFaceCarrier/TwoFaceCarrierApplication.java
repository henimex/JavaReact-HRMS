package hendev.twoFaceCarrier;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import hendev.twoFaceCarrier.entites.concretes.Employee;

@SpringBootApplication
public class TwoFaceCarrierApplication {

	public static void main(String[] args) {
		SpringApplication.run(TwoFaceCarrierApplication.class, args);
		System.out.println("towfacecarier");
		
		Employee employee = new Employee();
		employee.setId(1);
	}

}
