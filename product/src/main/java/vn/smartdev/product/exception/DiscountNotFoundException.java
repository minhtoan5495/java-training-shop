package vn.smartdev.product.exception;

public class DiscountNotFoundException extends Exception{
    private static final long serialVersionUID = 1L;
    public DiscountNotFoundException() {
        super();
    }

    public DiscountNotFoundException(String message) {
        super(message);
    }

    public DiscountNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }

    public DiscountNotFoundException(Throwable cause) {
        super(cause);
    }

    protected DiscountNotFoundException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
