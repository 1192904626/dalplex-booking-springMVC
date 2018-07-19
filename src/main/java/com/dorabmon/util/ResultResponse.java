package com.dorabmon.util;

public class ResultResponse {

    private boolean result;

    private String errorMessage = "";

    public ResultResponse(boolean result) {
        this.result = result;
    }

    public ResultResponse(boolean result, String errorMessage) {
        this.result = result;
        this.errorMessage = errorMessage;
    }

    public boolean isResult() {
        return result;
    }

    public void setResult(boolean result) {
        this.result = result;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }
}
