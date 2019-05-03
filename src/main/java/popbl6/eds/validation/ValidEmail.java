package popbl6.eds.validation;
/** @file ValidEmail.java
* @brief Interface to validate emails
* @authors
* Name  | Surname    | Email                                 |
* ------|--------    | -----------------                     | ---------------------------------------------------|
* Aitor | Piñeiro    | aitor.pineiro@alumni.mondragon.edu    |
* Ander | Rekalde    | ander.recalde@alumni.mondragon.edu    |
* Ander | Rementeria | ander.rementeria@alumni.mondragon.edu |
* Anton | Alberdi    | anton.alberdi@alumni.mondragon.edu    |
* @date 15/01/2019
*/
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Constraint(validatedBy = EmailValidator.class)
@Target({ ElementType.TYPE, ElementType.FIELD, ElementType.ANNOTATION_TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface ValidEmail {
	String message() default "Invalid email account";

	Class<?>[] groups() default {};

	Class<? extends Payload>[] payload() default {};
}
