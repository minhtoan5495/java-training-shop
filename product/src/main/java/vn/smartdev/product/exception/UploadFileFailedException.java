package vn.smartdev.product.exception;

public class UploadFileFailedException  extends Exception{
    private static final long serialVersionUID = 1L;

    public UploadFileFailedException() {
        super();
    }

    public UploadFileFailedException(String message) {
        super(message);
    }

    public UploadFileFailedException(String message, Throwable cause) {
        super(message, cause);
    }

    public UploadFileFailedException(Throwable cause) {
        super(cause);
    }

    protected UploadFileFailedException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
