/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 10-25-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

@isTest
private class TestRestrictContactByName{

    @isTest static void TestRestrictContactByNameOneRecord(){
        List<Contact> contactList = TestContactUtil.createTestContact();

        Test.startTest();

        // test here
        List<Database.upsertResult> result = Database.upsert(contactList,false);

        Test.stopTest();

        // System.assert(!result.isSuccess());
        // System.assert(result.getErrors().size() > 0);
        // System.assertEquals('The Last Name '+contact.LastName+' is not allowed for DML',
        //                      result.getErrors()[0].getMessage());


    }

    @isTest static void TestRestrictContactByNameBulkRecord(){
        //test setup
        List<Contact> contactList = TestContactUtil.createBulkContact(200);
        

        Test.startTest();

        // test here
        List<Database.upsertResult> result = Database.upsert(contactList,false);

        Test.stopTest();

        // System.assert(!result.isSuccess());
        // System.assert(result.getErrors().size() > 0);
        // System.assertEquals('The Last Name '+contact.LastName+' is not allowed for DML',
        //                      result.getErrors()[0].getMessage());

        
    }
    

}
