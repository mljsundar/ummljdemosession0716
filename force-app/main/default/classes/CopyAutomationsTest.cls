@IsTest
private class CopyAutomationsTest {

    @isTest static void testDefaultDescription(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = CopyAutomations.setDefaultDescription(acc);
        System.assertEquals('Default description', acc.Description, 'When description is null, it is updated to Default description');

        acc.Description = 'New Description Manual';
        
        acc = CopyAutomations.setDefaultDescription(acc);
        System.assertNotEquals('Default description', acc.Description, 'When description is NOT null, it is NOT updated to Default description');
    }

    @isTest static void testDefaultSite(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = CopyAutomations.setDefaultSite(acc);
        System.assertEquals('Single location', acc.Site, 'Default Site is Single location');
    }

    @isTest static void testDefaultShippingAddress(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = CopyAutomations.setDefaultShippingAddress(acc);
        System.assertEquals('111 W Illinois St', acc.ShippingStreet, 'Default ShippingStreet is 111 W Illinois St');
        System.assertEquals('Chicago', acc.ShippingState, 'Default Shippingtate is Chicago');
        System.assertEquals('60654', acc.ShippingPostalCode, 'Default ShippingPostalCode is 60654');
    }

    @isTest static void testDefaultPhone(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = CopyAutomations.setDefaultPhone(acc);
        System.assertEquals('9999999', acc.Phone, 'Default phone number is 9999999');
    }

    @isTest static void testDefaultURL(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = CopyAutomations.setDefaultURL(acc);
        System.assertEquals('www.copado.com', acc.Website, 'Default website is www.copado.com');
    }

}