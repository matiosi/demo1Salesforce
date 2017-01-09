public with sharing class AccountController {
@AuraEnabled
public static List<Account> findAll() {
		return [SELECT id,name,Location__Longitude__s FROM Account WHERE
		Location__Longitude__s != NULL LIMIT 50];
	}
}