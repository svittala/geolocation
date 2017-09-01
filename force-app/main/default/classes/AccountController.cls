public with sharing class AccountController {
 @AuraEnabled
 public static List<Account> findAll() {
   if (Schema.sObjectType.Account.fields.Location__Latitude__s.isAccessible() && Schema.sObjectType.Account.fields.Location__Longitude__s.isAccessible() )
  { 
   return [SELECT Id, Name, Location__Latitude__s, Location__Longitude__s
   FROM Account
   WHERE Location__Latitude__s != NULL AND Location__Longitude__s !=
          NULL
   LIMIT 50];
  }
  else
  return NULL;
 }
}
