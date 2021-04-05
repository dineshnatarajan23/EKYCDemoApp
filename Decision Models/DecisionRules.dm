{
    "decisiontable": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2021-03-29T09:50:00",
        "displayName": "DecisionRules",
        "hitPolicy": "UNIQUE",
        "description": "DecisionRules",
        "rules": [
            {
                "comments": "Young applicants in Private Sector",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "550"
                }],
                "inputEntry": [
                    {
                        "domainName": "ApplcantDetails",
                        "text": "(occtype = \"Private Sector\")"
                    },
                    {
                        "domainName": "ApplcantDetails",
                        "text": "(age = \"18 - 30 years\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Young applicants in Professional",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "525"
                }],
                "inputEntry": [
                    {
                        "domainName": "ApplcantDetails",
                        "text": "(occtype = \"Professional\")"
                    },
                    {
                        "domainName": "ApplcantDetails",
                        "text": "(age = \"18 - 30 years\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Young applicants in Business",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "525"
                }],
                "inputEntry": [
                    {
                        "domainName": "ApplcantDetails",
                        "text": "(occtype = \"Business\")"
                    },
                    {
                        "domainName": "ApplcantDetails",
                        "text": "(age = \"18 - 30 years\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Young applicants in Services",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "500"
                }],
                "inputEntry": [
                    {
                        "domainName": "ApplcantDetails",
                        "text": "(occtype = \"Services\")"
                    },
                    {
                        "domainName": "ApplcantDetails",
                        "text": "(age = \"18 - 30 years\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Middle aged applicants",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "700"
                }],
                "inputEntry": [
                    {
                        "domainName": "ApplcantDetails",
                        "text": "occtype = NO_VALUE"
                    },
                    {
                        "domainName": "ApplcantDetails",
                        "text": "(age = \"31 - 40 years\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Other applicants",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "900"
                }],
                "inputEntry": [
                    {
                        "domainName": "ApplcantDetails",
                        "text": "occtype = NO_VALUE"
                    },
                    {
                        "domainName": "ApplcantDetails",
                        "text": "(age = \"41 - 60 years\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            }
        ],
        "preferredOrientation": "RULE_AS_ROW",
        "output": [{
            "primitive": false,
            "itemDefinitionId": "EquatorDemo.CreditScore.creditscore",
            "outputValues": null,
            "groupLabel": "CreditScore",
            "description": null,
            "defaultOutputEntry": {
                "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "attributeName": null,
                "id": null,
                "text": null
            },
            "allowedAttributes": [],
            "label": null,
            "collection": false,
            "parentId": "EquatorDemo.CreditScore",
            "explicit": true,
            "groupDescription": null,
            "name": "creditscore",
            "typeRef": "number"
        }],
        "input": [{
            "primitive": false,
            "itemDefinitionId": "EquatorDemo.ApplcantDetails",
            "format": null,
            "groupLabel": "ApplcantDetails",
            "description": null,
            "allowedAttributes": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "occtype",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "occtype",
                    "id": "be3a5204-5411-4168-a4dc-8a00bc2370c4.ApplcantDetails.occtype",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "age",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "age",
                    "id": "be3a5204-5411-4168-a4dc-8a00bc2370c4.ApplcantDetails.age",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                }
            ],
            "label": null,
            "collection": false,
            "parentId": "EquatorDemo.ApplcantDetails",
            "explicit": true,
            "groupDescription": null,
            "inputExpression": {
                "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "attributeName": null,
                "id": null,
                "text": "ApplcantDetails"
            },
            "inputValues": null,
            "typeRef": "ApplcantDetails"
        }],
        "operations": {
            "workflowData": [],
            "webhookData": [],
            "replaceInputs": []
        },
        "outputLabel": null,
        "name": "decisiontable",
        "namespace": "EquatorDemo",
        "comment": null,
        "id": "EquatorDemo.decisiontable"
    },
    "decisionmodel": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2021-03-29T04:38:13",
        "displayName": "model",
        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "description": "model",
        "published": true,
        "decisionModelNamespace": "EquatorDemo",
        "tables": ["EquatorDemo.decisiontable"],
        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "namespace": "EquatorDemo",
        "name": "model",
        "id": "EquatorDemo.model",
        "category": "EquatorDemo"
    },
    "namespace": {
        "lastModifiedDate": "2021-03-28T01:03:29",
        "author": "policyadmin",
        "description": "EquatorDemo",
        "id": "EquatorDemo"
    },
    "itemdefinitions": [
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2021-03-28T05:03:29",
            "externalSourceDetails": null,
            "displayName": "ApplicantDetails",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "436c7301-7e0a-4dc4-893b-33b36f1fea2a",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "occtype",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "EquatorDemo.ApplcantDetails",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "EquatorDemo",
                    "name": "occtype",
                    "id": "EquatorDemo.ApplcantDetails.occtype",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "externalSourceDetails": null,
                    "displayName": "age",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "EquatorDemo.ApplcantDetails",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "EquatorDemo",
                    "name": "age",
                    "id": "EquatorDemo.ApplcantDetails.age",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                }
            ],
            "namespace": "EquatorDemo",
            "name": "ApplcantDetails",
            "modifiedBy": null,
            "id": "EquatorDemo.ApplcantDetails",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [],
                "inputType": "Database",
                "datasourceName": {
                    "type": 13,
                    "createdOn": "2020-10-04T20:16:09.315+05:30",
                    "parentId": "d1d3bc8a-2a9c-474a-b0f7-ac943febf2d7",
                    "referenceId": "8f1dbca5-bfdf-4bdd-a8d5-4b06b2bde829",
                    "parentName": "Datasources",
                    "modifiedOn": "2020-10-04T22:26:04.930+05:30",
                    "contentAsString": "",
                    "size": 0,
                    "buildProgress": false,
                    "name": "KYCDS.ds",
                    "location": "/EquatorEKYC/Datasources",
                    "id": "223f104a-03ac-4cc4-9a3c-4060b43445c4",
                    "projectId": "79ca6328-5264-4110-adbe-f6c19c819b6b",
                    "properties": {"isWorkspaceReady": true}
                },
                "tableName": {
                    "schema": "public",
                    "name": "KYCApplications"
                }
            },
            "typeRef": "ApplcantDetails"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2021-03-28T05:03:29",
            "externalSourceDetails": null,
            "displayName": "CreditScore",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "f8dc9b37-57eb-4700-8d97-bb3d6e2928a0",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "externalSourceDetails": null,
                "displayName": "creditscore",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "EquatorDemo.CreditScore",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "EquatorDemo",
                "name": "creditscore",
                "id": "EquatorDemo.CreditScore.creditscore",
                "isGeoEnabled": false,
                "typeRef": "number"
            }],
            "namespace": "EquatorDemo",
            "name": "CreditScore",
            "modifiedBy": null,
            "id": "EquatorDemo.CreditScore",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{
                    "displayName": "creditscore",
                    "typeRef": "number"
                }],
                "inputType": "Custom"
            },
            "typeRef": "CreditScore"
        }
    ]
}