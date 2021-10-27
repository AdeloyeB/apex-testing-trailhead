/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 10-27-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public with sharing class RandomContactFactory {

    
    public static List<Contact> generateRandomContacts(Integer numberOfContacts, String lastName){
        List<Contact> returnContactList = new List<Contact>();

        for (Integer i = 0; i < numberOfContacts; i++) {
            Contact contact = new Contact(LastName=lastName, FirstName=String.valueOf(i));
            returnContactList.add(contact);
        }

        return returnContactList;
    }
    
}
