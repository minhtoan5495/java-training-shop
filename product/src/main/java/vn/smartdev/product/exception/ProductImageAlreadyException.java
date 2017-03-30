package vn.smartdev.product.exception;

public class ProductImageAlreadyException extends Exception{
    private static final long serialVersionUID = 1L;

    public ProductImageAlreadyException() {
        super();
    }

    public ProductImageAlreadyException(String message) {
        super(message);
    }

    public ProductImageAlreadyException(String message, Throwable cause) {
        super(message, cause);
    }

    protected ProductImageAlreadyException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }

    public ProductImageAlreadyException(Throwable cause) {
        super(cause);
    }
}
