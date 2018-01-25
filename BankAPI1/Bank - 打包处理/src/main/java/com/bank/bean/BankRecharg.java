package com.bank.bean;

import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.math.BigDecimal;

/**
 * Created by Animo on 2018-01-14.
 */
public class BankRecharg {

    @NotBlank(message = "请传入真实姓名")
    private String realName;
    @NotBlank(message = "请传入银行卡号")
    @Size(min = 16,max=19,message = "银行卡格式错误")
    private String bankCardNo;
    @NotBlank(message = "请传入手机号")
    @Pattern( message = "手机号格式错误",regexp = "^(17[0-9]|13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\\d{8}$")
    private String phone;
    @NotBlank(message = "请传入所属银行")
    private String bank;
    @NotNull(message = "请传入金额")
    @Min(value = 10,message = "10.00元起步")
    private BigDecimal money;

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getBankCardNo() {
        return bankCardNo;
    }

    public void setBankCardNo(String bankCardNo) {
        this.bankCardNo = bankCardNo;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public BigDecimal getMoney() {
        return money;
    }

    public void setMoney(BigDecimal money) {
        this.money = money;
    }

    @Override
    public String toString() {
        return "BankRecharg{" +
                "realName='" + realName + '\'' +
                ", bankCardNo='" + bankCardNo + '\'' +
                ", phone='" + phone + '\'' +
                ", bank='" + bank + '\'' +
                ", money=" + money +
                '}';
    }
}
