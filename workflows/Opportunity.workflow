<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Create Product Automatically</fullName>
        <active>false</active>
        <formula>NOT(ISNULL(Product__c))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Close Date in 10 Days</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.CreatedById</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Reminder_Close_Date_in_10_days</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Opportunity.CloseDate</offsetFromField>
            <timeLength>-10</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>Reminder_Close_Date_in_10_days</fullName>
        <assignedToType>owner</assignedToType>
        <description>This task is a reminder that the opportunity close date is approaching.</description>
        <dueDateOffset>10</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Reminder: Close Date in 10 days</subject>
    </tasks>
</Workflow>
