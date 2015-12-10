<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Unmark_Deletion</fullName>
        <field>Marked_for_Deletion__c</field>
        <literalValue>0</literalValue>
        <name>Unmark Deletion</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Account NAICs Code Required</fullName>
        <actions>
            <name>Account_NAICs_Code_Required</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>When an Account is created, this is a task assigned to Cindy to complete the NAICs code for the new Account.</description>
        <formula>ISBLANK( NaicsCode )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Account_NAICs_Code_Required</fullName>
        <assignedTo>alui@acumensolutions.com.nsf</assignedTo>
        <assignedToType>user</assignedToType>
        <description>This task is for completing the NAICs code for an Account.</description>
        <dueDateOffset>3</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Account NAICs Code Required</subject>
    </tasks>
    <tasks>
        <fullName>Delete_Account</fullName>
        <assignedTo>lbilicki@nsf.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Delete Account</subject>
    </tasks>
</Workflow>
