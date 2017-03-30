package vn.smartdev.product.exception;

public class ProductAlreadyException extends Exception{
    private static final long serialVersionUID = 1L;
    public ProductAlreadyException() {
        super();
    }
    public ProductAlreadyException(String message)
    {
        super(message);
    }
    public ProductAlreadyException(String message, Throwable cause) {
        super(message, cause);
    }

    public ProductAlreadyException(Throwable cause) {
        super(cause);
    }

    protected ProductAlreadyException(String message, Throwable cause,
                                       boolean enableSuppression,
                                       boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
