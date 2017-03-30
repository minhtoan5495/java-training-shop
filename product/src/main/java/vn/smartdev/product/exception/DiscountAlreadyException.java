package vn.smartdev.product.exception;

public class DiscountAlreadyException extends Exception{
    private static final long serialVersionUID = 1L;

    public DiscountAlreadyException() {
        super();
    }

    public DiscountAlreadyException(String message) {
        super(message);
    }

    public DiscountAlreadyException(String message, Throwable cause) {
        super(message, cause);
    }

    public DiscountAlreadyException(Throwable cause) {
        super(cause);
    }

    protected DiscountAlreadyException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
