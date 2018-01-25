package com.bank.controller;

import com.bank.bean.BankBind;
import com.bank.bean.BankRecharg;
import com.bank.bean.BankResult;
import com.bank.bean.ValidationResult;
import com.bank.enums.BankEnums;
import com.bank.utils.BankUtils;
import com.bank.utils.RandomUtils;
import com.bank.utils.ValidationUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Animo on 2018-01-12.
 */
@RestController
@RequestMapping("/")
public class BankController {

    private BankResult bankResult;

    /**
     * 银行卡绑定
     * @param bank
     * @return
     */
    @PostMapping("bind")
    public BankResult bind(BankBind bank){
        bankResult = result(bank);
        System.out.println(bank);
        if(bankResult==null) {
            if (RandomUtils.getRandom() == 5) {
                return new BankResult(BankEnums.BINDERROR.getCode(), BankEnums.BINDERROR.getMessage());
            }
            return new BankResult(BankEnums.BINDSUCCESS.getCode(),BankEnums.BINDSUCCESS.getMessage());
        }else {
            return  bankResult;
        }
    }

    /**
     * 银行卡解除
     * @param bank
     * @return
     */
    @PostMapping("unbind")
    public BankResult unBind(BankBind bank){
        bankResult = result(bank);
        System.out.println(bank);
        if(bankResult==null) {
            if (RandomUtils.getRandom() == 5) {
                return new BankResult(BankEnums.UNBINGERROR.getCode(),BankEnums.UNBINGERROR.getMessage());
            }
            return new BankResult(BankEnums.UNBINGSUCCESS.getCode(),BankEnums.UNBINGSUCCESS.getMessage());
        }else {
            return  bankResult;
        }
    }

    /**
     * 银行卡充值
     * @param bank
     * @return
     */
    @PostMapping("recharge")
    public BankResult recharge(BankRecharg bank){
        bankResult = result(bank);
        System.out.println(bank);
        if(bankResult==null) {
            if(!BankUtils.getBank(bank.getBank())){
                return new BankResult(BankEnums.COLLECTERROR.getCode(),"不支持此银行");
            }
            if (RandomUtils.getRandom() == 5) {
                return new BankResult(BankEnums.RECHARGERROR.getCode(),BankEnums.RECHARGERROR.getMessage());
            }
            return new BankResult(BankEnums.RECHARGSUCCESS.getCode(),BankEnums.RECHARGSUCCESS.getMessage());
        }else {
            return  bankResult;
        }
    }

    /**
     * 提现
     * @param bank
     * @return
     */
    @PostMapping("mention")
    public BankResult mention(BankRecharg bank){
        bankResult = result(bank);
        System.out.println(bank);
        if(bankResult==null) {
            if(!BankUtils.getBank(bank.getBank())){
                return new BankResult(BankEnums.COLLECTERROR.getCode(),"不支持此银行");
            }
            if (RandomUtils.getRandom() == 5) {
                return new BankResult(BankEnums.MENTIONERROR.getCode(),BankEnums.MENTIONERROR.getMessage());
            }
            return new BankResult(BankEnums.MENTIONSUCCESS.getCode(),BankEnums.MENTIONSUCCESS.getMessage());
        }else {
            return  bankResult;
        }
    }

    private BankResult result(Object object){
        ValidationResult validationResult = ValidationUtils.validateEntity(object);
        if(validationResult.isHasErrors()){
            return new BankResult(BankEnums.COLLECTERROR.getCode(),validationResult.getErrorMsg());
        }
        return null;
    }
}
