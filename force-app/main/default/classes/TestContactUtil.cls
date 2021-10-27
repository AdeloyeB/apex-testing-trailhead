/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 10-25-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class TestContactUtil {

    public static List<Contact> createTestContact(){
        List<Contact> contactList = new List<Contact>();
        Contact contact = new Contact(LastName='INVALIDNAME');
        contactList.add(contact);

        return contactList;    
    }

    public static List<Contact> createBulkContact(Integer x){
        List<Contact> contactList = new List<Contact>();

        for (Integer i = 0; i < x; i++) {

            Contact contact = new Contact(LastName='INVALIDNAME', FirstName=String.valueOf(x)); 
            contactList.add(contact);   
        }

        return contactList;
    }
    
}
