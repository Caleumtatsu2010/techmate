//package com.caleumtatsu2010.techmate.utility.password;
//
//import com.sun.tools.javac.util.Assert;
//import org.passay.*;
//
//import java.util.*;
//
//public class PasswordUtility {
//    private List<Rule> rules = null;
//    private CharacterRule alphabets = null;
//    private CharacterRule digits = null;
//    private CharacterRule special = null;
//    private CharacterRule length = nul;
//
//    public PasswordUtility() {
//        this.rules = new ArrayList<>();
//        this.alphabets = new CharacterRule(EnglishCharacterData.Alphabetical);
//        this.digits = new CharacterRule(EnglishCharacterData.Digit);
//        this.special = new CharacterRule(EnglishCharacterData.Special);
//        this.length = new LengthRule(8, 15);
//    }
//
//    public boolean passwordValidator(String pass) {
//        //Rule 1: Password length should be in between
//        //8 and 16 characters
//        rules.add(length);
//        //Rule 2: No whitespace allowed
//        rules.add(new WhitespaceRule());
//        //Rule 3.a: At least one Upper-case character
//        rules.add(new CharacterRule(EnglishCharacterData.UpperCase, 1));
//        //Rule 3.b: At least one Lower-case character
//        rules.add(new CharacterRule(EnglishCharacterData.LowerCase, 1));
//        //Rule 3.c: At least one digit
//        rules.add(new CharacterRule(EnglishCharacterData.Digit, 1));
//        //Rule 3.d: At least one special character
//        rules.add(new CharacterRule(EnglishCharacterData.Special, 1));
//
//        RuleResult result = new PasswordValidator(rules).validate(new PasswordData(pass));
//
//        if (result.isValid()) {
//            return true;
//        } else {
//            return false;
//        }
//    }
//
//    public String passwordGenerator() {
//        PasswordGenerator passwordGenerator = new PasswordGenerator();
//        return passwordGenerator.generatePassword(15, alphabets, digits, special);
//    }
//
//    public static void main(String[] args) {
//        PasswordUtility passwordUtility = new PasswordUtility();
//
//
//    }
//}
