package vn.smartdev.user.dao.validator;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Created by levuhuy on 12/22/16.
 */

@Constraint(validatedBy = PhoneValidator.class)
@Target({ ElementType.METHOD, ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)

public @interface Phone {
    String message() default "{Phone.invalid}";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}

