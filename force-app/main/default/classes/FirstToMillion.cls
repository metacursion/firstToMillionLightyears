/**
 * Created by heyoo on 31/08/20.
 */

public with sharing class FirstToMillion {
    final static String QUERY_PARAM = 'query';
    public String getLeads(){
        return JSON.serialize(Database.query(ApexPages.currentPage().getParameters().get(QUERY_PARAM)));
    }
    @AuraEnabled public static String doQuery(String query){
        PageReference i = Page.FirstToMillion;
        i.getParameters().put(QUERY_PARAM, query);
        return i.getContent().toString();
    }
}