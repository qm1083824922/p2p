package com.bank.demo;

import com.bank.sdk.HttpUtils;

/**
 * Created by 7025 on 2018/1/15.
 */
public class BankApiDemo {

    public static void main(String[] args) {
        HttpUtils.sendPost("http://localhost:8081/bind", "realName=abc&bank=建设银行&bankCardNo=45454&phone=133");
    }
}
