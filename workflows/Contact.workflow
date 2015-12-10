<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Account_City_Contact</fullName>
        <field>MailingCity</field>
        <formula>Account.BillingCity</formula>
        <name>Account City Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Country_Contact</fullName>
        <field>MailingCountry</field>
        <formula>Account.BillingCountry</formula>
        <name>Account Country Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Postal_Code_Contact</fullName>
        <field>MailingPostalCode</field>
        <formula>Account.BillingPostalCode</formula>
        <name>Account Postal Code Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_State_Contact</fullName>
        <field>MailingState</field>
        <formula>Account.BillingState</formula>
        <name>Account State Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Street_Contact</fullName>
        <field>MailingStreet</field>
        <formula>Account.BillingStreet</formula>
        <name>Account Street Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Active_Contact_Updated</fullName>
        <field>Active_Contact__c</field>
        <literalValue>1</literalValue>
        <name>Active Contact Updated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Account Owner Alert When Contact Created</fullName>
        <actions>
            <name>New_Contact_For_Account</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>The rule sends an alert to the Account Owner when a Contact is created.</description>
        <formula>OwnerId  &lt;&gt;  Account.OwnerId</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Active Contact Upon Creation</fullName>
        <actions>
            <name>Active_Contact_Updated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.CreatedById</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <description>The rule updates the Active Contact field upon the creation of a contact.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Contact Address Equals Account Address</fullName>
        <actions>
            <name>Account_City_Contact</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Account_Country_Contact</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Account_Postal_Code_Contact</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Account_State_Contact</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Account_Street_Contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.MailingCity</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.MailingCountry</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.MailingState</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.MailingStreet</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.MailingPostalCode</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>New_Contact_For_Account</fullName>
        <assignedToType>accountOwner</assignedToType>
        <description>This task is an alert to let you know a new contact has been added to an Account you own.</description>
        <dueDateOffset>3</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>New Contact For Account</subject>
    </tasks>
</Workflow>
