package vn.smartdev.product.exception;

public class ProductDetailNotFoundException extends Exception{
    private static final long serialVersionUID = 1L;

    public ProductDetailNotFoundException() {
        super();
    }

    public ProductDetailNotFoundException(String message) {
        super(message);
    }

    public ProductDetailNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }

    public ProductDetailNotFoundException(Throwable cause) {
        super(cause);
    }

    protected ProductDetailNotFoundException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
