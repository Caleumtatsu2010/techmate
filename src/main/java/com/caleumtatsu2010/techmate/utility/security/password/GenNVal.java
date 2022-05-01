package com.caleumtatsu2010.techmate.utility.security.password;
import org.passay.*;

public class GenNVal {
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

    //RULE SIZE
    //lenth
    private int minLen;
    private int maxLen;
    //num of atleast
    private int atleastNum;
    //num of sequence alphabet
    private int numAlSeq;
    //num of sequence numeric
    private int numNumSeq;
    //num of repeat
    private int numRep;

    // 8 to 16 char, aleast 1 up, 1 low, 1 digit, without 3 sequence of char, 3 of digit, repeat only 3, no whitespace
    public GenNVal(int minLen, int maxLen, int atleastNum, int numAlSeq, int numNumSeq, int numRep) {
        this.minLen = minLen;
        this.maxLen = maxLen;
        this.lengthRule = new LengthRule(minLen, maxLen);
        this.upperCase = new CharacterRule(EnglishCharacterData.UpperCase, atleastNum);
        this.lowerCase = new CharacterRule(EnglishCharacterData.LowerCase, atleastNum);
        this.digit = new CharacterRule(EnglishCharacterData.Digit, atleastNum);
        this.specialChar = new CharacterRule(new CharacterData() {
            @Override
            public String getErrorCode() {
                return "SAMPLE_ERROR_CODE";
            }
            @Override
            public String getCharacters() {
                return "!#$%&()*+";
            }
        }, 1);
        this.alphabetSeq = new IllegalSequenceRule(EnglishSequenceData.Alphabetical, numAlSeq, false);
        this.numericSeq = new IllegalSequenceRule(EnglishSequenceData.Numerical, numNumSeq, false);
        this.repeatChar = new RepeatCharactersRule(numRep);
        this.whitespace =  new WhitespaceRule();
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

//    public static void main(String[] args) {
//        GenerateNValidate passGenAndVal = new GenerateNValidate(8, 16, 1, 3,3,  3);
//        String password = passGenAndVal.passwordGenerator(8, 16);
//        System.out.println(password);
//
//        System.out.println(passGenAndVal.passwordValidator(password));
//
//
//    }
}
