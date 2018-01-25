package com.bank.utils;

import java.util.Random;

/**
 * Created by Animo on 2018-01-14.
 */
public class RandomUtils {

    public static int getRandom(){
        Random random = new Random();
        return random.nextInt(10);
    }

}
