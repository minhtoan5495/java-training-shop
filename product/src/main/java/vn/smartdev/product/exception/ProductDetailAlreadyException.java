package vn.smartdev.product.exception;

public class ProductDetailAlreadyException extends Exception {
    private static final long serialVersionUID = 1L;

    public ProductDetailAlreadyException() {
        super();
    }

    public ProductDetailAlreadyException(String message) {
        super(message);
    }

    public ProductDetailAlreadyException(Throwable cause) {
        super(cause);
    }

    public ProductDetailAlreadyException(String message, Throwable cause) {
        super(message, cause);
    }

    protected ProductDetailAlreadyException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
