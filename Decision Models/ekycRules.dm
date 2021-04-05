{
    "decisiontable": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2021-03-29T09:49:53",
        "displayName": "ekycRules",
        "hitPolicy": "COLLECT",
        "description": "ekycRules",
        "rules": [
            {
                "comments": "18 - 30 years",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "500"
                }],
                "inputEntry": [
                    {
                        "domainName": "ApplicantDetails",
                        "text": "(age = \"18 - 30 years\")"
                    },
                    {
                        "domainName": "ApplicantDetails",
                        "text": "occtype = NO_VALUE"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Government",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "550"
                }],
                "inputEntry": [
                    {
                        "domainName": "ApplicantDetails",
                        "text": "age = NO_VALUE"
                    },
                    {
                        "domainName": "ApplicantDetails",
                        "text": "(occtype = \"Government\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Business",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "650"
                }],
                "inputEntry": [
                    {
                        "domainName": "ApplicantDetails",
                        "text": "age = NO_VALUE"
                    },
                    {
                        "domainName": "ApplicantDetails",
                        "text": "(occtype = \"Business\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Professional",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "750"
                }],
                "inputEntry": [
                    {
                        "domainName": "ApplicantDetails",
                        "text": "age = NO_VALUE"
                    },
                    {
                        "domainName": "ApplicantDetails",
                        "text": "(occtype = \"Professional\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Private Sector",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "700"
                }],
                "inputEntry": [
                    {
                        "domainName": "ApplicantDetails",
                        "text": "age = NO_VALUE"
                    },
                    {
                        "domainName": "ApplicantDetails",
                        "text": "(occtype = \"Private Sector\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Service",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "750"
                }],
                "inputEntry": [
                    {
                        "domainName": "ApplicantDetails",
                        "text": "age = NO_VALUE"
                    },
                    {
                        "domainName": "ApplicantDetails",
                        "text": "(occtype = \"Service\")"
                    }
                ],
                "operationEntry": {
                    "isWorkflowCallable": {},
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Default",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "800"
                }],
                "inputEntry": [
                    {
                        "domainName": "ApplicantDetails",
                        "text": "age = NO_VALUE"
                    },
                    {
                        "domainName": "ApplicantDetails",
                        "text": "occtype = NO_VALUE"
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
            "itemDefinitionId": "AcmeDemo.MinCreditScore.creditscore",
            "outputValues": null,
            "groupLabel": "MinCreditScore",
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
            "parentId": "AcmeDemo.MinCreditScore",
            "explicit": true,
            "groupDescription": null,
            "name": "creditscore",
            "typeRef": "number"
        }],
        "input": [{
            "primitive": false,
            "itemDefinitionId": "AcmeDemo.ApplicantDetails",
            "format": null,
            "groupLabel": "ApplicantDetails",
            "description": null,
            "allowedAttributes": [
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
                    "id": "82693f71-970b-4582-867a-d2e9a3e2667c.ApplicantDetails.age",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                },
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
                    "id": "82693f71-970b-4582-867a-d2e9a3e2667c.ApplicantDetails.occtype",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                }
            ],
            "label": null,
            "collection": false,
            "parentId": "AcmeDemo.ApplicantDetails",
            "explicit": true,
            "groupDescription": null,
            "inputExpression": {
                "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "attributeName": null,
                "id": null,
                "text": "ApplicantDetails"
            },
            "inputValues": null,
            "typeRef": "ApplicantDetails"
        }],
        "operations": {
            "workflowData": [],
            "webhookData": [],
            "replaceInputs": []
        },
        "outputLabel": null,
        "name": "decisiontable",
        "namespace": "AcmeDemo",
        "comment": null,
        "id": "AcmeDemo.decisiontable"
    },
    "decisionmodel": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2021-03-29T04:38:14",
        "displayName": "model",
        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "description": "model",
        "published": true,
        "decisionModelNamespace": "AcmeDemo",
        "tables": ["AcmeDemo.decisiontable"],
        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "namespace": "AcmeDemo",
        "name": "model",
        "id": "AcmeDemo.model",
        "category": "AcmeDemo"
    },
    "namespace": {
        "lastModifiedDate": "2021-03-28T01:03:35",
        "author": "policyadmin",
        "description": "AcmeDemo",
        "id": "AcmeDemo"
    },
    "itemdefinitions": [
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2021-03-28T05:03:35",
            "externalSourceDetails": null,
            "displayName": "ApplicantDetails",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "dd7d6a53-fe35-4895-beae-09a2cb75756c",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [
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
                    "parentId": "AcmeDemo.ApplicantDetails",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "AcmeDemo",
                    "name": "age",
                    "id": "AcmeDemo.ApplicantDetails.age",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                },
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
                    "parentId": "AcmeDemo.ApplicantDetails",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "AcmeDemo",
                    "name": "occtype",
                    "id": "AcmeDemo.ApplicantDetails.occtype",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                }
            ],
            "namespace": "AcmeDemo",
            "name": "ApplicantDetails",
            "modifiedBy": null,
            "id": "AcmeDemo.ApplicantDetails",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{}],
                "inputType": "Database",
                "datasourceName": {
                    "type": 13,
                    "createdOn": "2020-09-03T16:52:36.502+05:30",
                    "parentId": "0e353718-b7b5-42aa-ba60-1815111cb8e4",
                    "referenceId": "1f1e9460-0d3f-4ed2-b65c-14f97b22900d",
                    "parentName": "Datasources",
                    "modifiedOn": "2020-09-03T16:53:58.168+05:30",
                    "contentAsString": "",
                    "size": 0,
                    "buildProgress": false,
                    "name": "KYCDS.ds",
                    "location": "/eKycAppl/Datasources",
                    "id": "47dd79b7-9fdb-4e42-b077-329045ba3af2",
                    "projectId": "7a8a64c4-ea1c-432b-8a0c-4cabd3b876ea",
                    "properties": {"isWorkspaceReady": true}
                },
                "tableName": {
                    "schema": "public",
                    "name": "KYCApplications"
                }
            },
            "typeRef": "ApplicantDetails"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2021-03-28T05:03:35",
            "externalSourceDetails": null,
            "displayName": "MinCreditScore",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "dd14a883-0a70-4dae-95f0-f4ec9201ba37",
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
                "parentId": "AcmeDemo.MinCreditScore",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "AcmeDemo",
                "name": "creditscore",
                "id": "AcmeDemo.MinCreditScore.creditscore",
                "isGeoEnabled": false,
                "typeRef": "number"
            }],
            "namespace": "AcmeDemo",
            "name": "MinCreditScore",
            "modifiedBy": null,
            "id": "AcmeDemo.MinCreditScore",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{
                    "displayName": "creditscore",
                    "typeRef": "number"
                }],
                "inputType": "Custom"
            },
            "typeRef": "MinCreditScore"
        }
    ]
}