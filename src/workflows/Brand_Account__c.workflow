<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Brand_Account_paused_for_1M</fullName>
        <ccEmails>salesforce@strikesocial.com</ccEmails>
        <description>Brand/Account paused for 1M</description>
        <protected>false</protected>
        <recipients>
            <field>DefaultClientServicesRep__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>SalesRep__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>salesforce@strikesocial.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Brand_Account/Brand_Account_Paused_1M</template>
    </alerts>
    <alerts>
        <fullName>Brand_Account_paused_for_3M</fullName>
        <ccEmails>salesforce@strikesocial.com</ccEmails>
        <description>Brand/Account paused for 3M</description>
        <protected>false</protected>
        <recipients>
            <field>DefaultClientServicesRep__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>SalesRep__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>salesforce@strikesocial.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Brand_Account/Brand_Account_Paused_3M</template>
    </alerts>
    <alerts>
        <fullName>Brand_Account_paused_for_6M</fullName>
        <ccEmails>salesforce@strikesocial.com</ccEmails>
        <description>Brand/Account paused for 6M</description>
        <protected>false</protected>
        <recipients>
            <field>DefaultClientServicesRep__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>SalesRep__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>salesforce@strikesocial.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Brand_Account/Brand_Account_Paused_6M</template>
    </alerts>
    <rules>
        <fullName>Brand%2FAccount Paused</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Brand_Account__c.LastContractEndDate__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Email alert to manually set Brand/Account&apos;s sales rep and client services rep informing there were no active contracts for 1month and 6 months</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Brand_Account_paused_for_1M</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Brand_Account__c.LastContractEndDate__c</offsetFromField>
            <timeLength>30</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Brand_Account_paused_for_3M</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Brand_Account__c.LastContractEndDate__c</offsetFromField>
            <timeLength>90</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Brand_Account_paused_for_6M</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Brand_Account__c.LastContractEndDate__c</offsetFromField>
            <timeLength>182</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
