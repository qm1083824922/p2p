package com.bank.utils;

/**
 * Created by Animo on 2018-01-15.
 */
public class BankUtils {

    private static String[] bank={"建设银行","民生银行","交通银行","农业银行"};


    public static boolean getBank(String bankValue){
        for(String value : bank){
            if(value.equals(bankValue)){
                return true;
            }
        }
        return  false;
    }
}
