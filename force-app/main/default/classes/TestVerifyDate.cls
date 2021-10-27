/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 10-25-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
private with sharing class TestVerifyDate {

    @isTest static void testCheckDate() {
        date date1 = date.newInstance(1960, 2, 17);
        date date2 = date.newInstance(1960, 2, 22);

        date VerifyDateResult = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2, VerifyDateResult);
    }

    @isTest static void testCheckDate2() {
        date date1 = date.newInstance(1960, 2, 17);
        date date2 = date.newInstance(1960, 3, 22);
        date endofMonth = date.newInstance(1960, 2, 29);

        date VerifyDateResult = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(endofMonth, VerifyDateResult);
    }

    @isTest static void testDateWithin30Days() {
        date date1 = date.newInstance(1960, 2, 17);
        date date2 = date.newInstance(1960, 2, 22);

        Boolean DateWithin30DaysResult = VerifyDate.DateWithin30Days(date1, date2);
        System.assertEquals(true, DateWithin30DaysResult);
    }

    @isTest static void testSetEndofMonthDate() {
        date date1 = date.newInstance(1960, 2, 17);
        date endofMonth = date.newInstance(1960, 2, 29);

        date setEndofMonthResult = VerifyDate.SetEndofMonthDate(date1);

        System.assertEquals(endofMonth, setEndofMonthResult);
    }
}
