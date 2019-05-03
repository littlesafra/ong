package popbl6.eds.validation;
/** @file FieldMatch.java
* @brief Interface to validate fields
* @authors
* Name  | Surname    | Email                                 |
* ------|--------    | -----------------                     | ---------------------------------------------------|
* Aitor | Piñeiro    | aitor.pineiro@alumni.mondragon.edu    |
* Ander | Rekalde    | ander.recalde@alumni.mondragon.edu    |
* Ander | Rementeria | ander.rementeria@alumni.mondragon.edu |
* Anton | Alberdi    | anton.alberdi@alumni.mondragon.edu    |
* @date 15/01/2019
*/
import java.lang.annotation.ElementType;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;


@Constraint(validatedBy = FieldMatchValidator.class)
@Target({ ElementType.TYPE, ElementType.ANNOTATION_TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface FieldMatch {
	String message() default "";
	Class<?>[] groups() default {};
	Class<? extends Payload>[] payload() default {};
	
	String first();
    String second();
    
    @Target({ ElementType.TYPE, ElementType.ANNOTATION_TYPE })
    @Retention(RetentionPolicy.RUNTIME)
    @Documented
    @interface List
    {
    	FieldMatch[] value();
    }
}