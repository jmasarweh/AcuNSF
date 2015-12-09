<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Create Product Automatically</fullName>
        <active>false</active>
        <formula>NOT(ISNULL(Product__c))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
