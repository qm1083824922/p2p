package com.bank.enums;

/**
 * Created by Animo on 2018-01-12.
 */
public enum  BankEnums {

    BINDSUCCESS(1000,"绑卡成功"),
    BINDERROR(1001,"绑卡失败"),
    UNBINGSUCCESS(2000,"解绑成功"),
    UNBINGERROR(2001,"解绑失败"),
    RECHARGSUCCESS(3000,"充值成功"),
    RECHARGERROR(3001,"充值失败"),
    MENTIONSUCCESS(4000,"提现成功"),
    MENTIONERROR(4001,"提现失败"),
    COLLECTERROR(5001,"汇总");

    private Integer code;
    private String message;


    BankEnums(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public Integer getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
}
