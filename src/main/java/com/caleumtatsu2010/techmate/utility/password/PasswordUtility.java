package com.caleumtatsu2010.techmate.utility.password;


import org.passay.*;

import java.util.*;

public class PasswordUtility {
    //COMMON CHARACTER RULE

    // length between 8 and 16 characters
    private LengthRule lengthRule =  null;
    // at least one upper-case character
    private CharacterRule upperCase = null;
    // at least one lower-case character
    private CharacterRule lowerCase = null;
    // at least one digit character
    private CharacterRule digit = null;
    // at least one symbol (special character)
    private CharacterRule specialChar = null;

    //SPECIAL RULE
    // define some illegal sequences that will fail when >= 5 chars long
    // alphabetical is of the form 'abcde', numerical is '34567'
    // the false parameter indicates that wrapped sequences are allowed; e.g.
    // 'xyzabc'
    private IllegalSequenceRule alphabetSeq = null;
    private IllegalSequenceRule numericSeq = null;
    //no repeat character
    private RepeatCharactersRule repeatChar = null;
    // no whitespace
    private WhitespaceRule whitespace = null;

    public PasswordUtility(LengthRule lengthRule, CharacterRule upperCase, CharacterRule lowerCase, CharacterRule digit, CharacterRule specialChar, IllegalSequenceRule alphabetSeq, IllegalSequenceRule numericSeq, RepeatCharactersRule repeatChar, WhitespaceRule whitespace) {
        this.lengthRule = lengthRule;
        this.upperCase = upperCase;
        this.lowerCase = lowerCase;
        this.digit = digit;
        this.specialChar = specialChar;
        this.alphabetSeq = alphabetSeq;
        this.numericSeq = numericSeq;
        this.repeatChar = repeatChar;
        this.whitespace = whitespace;
    }

    public boolean passwordValidator(String password) {
        PasswordValidator validator = new PasswordValidator(lengthRule, upperCase, lowerCase, digit, specialChar, alphabetSeq, numericSeq, repeatChar, whitespace);
        RuleResult result = validator.validate(new PasswordData(new String(password)));
        if (result.isValid())
            return true;
        else {
            return false;
        }
    }

    public String passwordGenerator(int minLen, int maxLen) {
        return new PasswordGenerator().generatePassword(minLen + (int)(Math.random() * ((maxLen - minLen) + 1)), upperCase, lowerCase, digit, specialChar);
    }

    public static void main(String[] args) {
        PasswordUtility passwordUtility = new PasswordUtility(new LengthRule(8, 16),
        new CharacterRule(EnglishCharacterData.UpperCase, 1),
        new CharacterRule(EnglishCharacterData.LowerCase, 1),
        new CharacterRule(EnglishCharacterData.Digit, 1),
        new CharacterRule(new CharacterData() {
            @Override
            public String getErrorCode() {
                return "SAMPLE_ERROR_CODE";
            }
            @Override
            public String getCharacters() {
                return "!#$%&()*+-";
            }
        }, 1),
        new IllegalSequenceRule(EnglishSequenceData.Alphabetical, 3, false),
        new IllegalSequenceRule(EnglishSequenceData.Numerical, 3, false),
        new RepeatCharactersRule(4),
        new WhitespaceRule());

        String password = passwordUtility.passwordGenerator(8, 16);
        System.out.println(password);

        System.out.println(passwordUtility.passwordValidator(password));


    }
}
