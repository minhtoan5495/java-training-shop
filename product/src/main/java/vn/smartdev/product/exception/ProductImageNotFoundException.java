package vn.smartdev.product.exception;

public class ProductImageNotFoundException extends Exception{
    private static final long serialVersionUID = 1L;

    public ProductImageNotFoundException() {
        super();
    }

    public ProductImageNotFoundException(String message) {
        super(message);
    }

    public ProductImageNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }

    public ProductImageNotFoundException(Throwable cause) {
        super(cause);
    }

    protected ProductImageNotFoundException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
