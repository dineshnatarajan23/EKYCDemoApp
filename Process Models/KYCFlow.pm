{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ExclusiveGateway_eai3qq",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_ennq82",
                "sourceRef": "UserTask_11x35fj",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_1aq3ho0",
                "businessProp": {"condition": "status == 0"},
                "name": "Yes",
                "id": "SequenceFlow_j9nvsg",
                "sourceRef": "ExclusiveGateway_eai3qq",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ExclusiveGateway_1py7166",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_yj2mfm",
                "sourceRef": "UserTask_1aq3ho0",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_mn8uaw",
                "businessProp": {"condition": "vstatus == 1"},
                "name": "Yes",
                "id": "SequenceFlow_y8e1sw",
                "sourceRef": "ExclusiveGateway_1py7166",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_7lwl8j",
                "businessProp": {"condition": "vstatus == 2"},
                "name": "No",
                "id": "SequenceFlow_1c15ca5",
                "sourceRef": "ExclusiveGateway_1py7166",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_1sp47xh",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1pdjvoj",
                "sourceRef": "ServiceTask_7lwl8j",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_9zqvnc",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_u2vsb8",
                "sourceRef": "ServiceTask_1sp47xh",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_18ebqz7",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_pxwonu",
                "sourceRef": "ServiceTask_mn8uaw",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_p0c7r7",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1fe1gxq",
                "sourceRef": "ServiceTask_ogezsb",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_ogezsb",
                "businessProp": {"condition": "status == 1 || status == 2"},
                "name": "No",
                "id": "SequenceFlow_8f14cl",
                "sourceRef": "ExclusiveGateway_eai3qq",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ScriptTask_194zbbh",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1l89hcp",
                "sourceRef": "BusinessRuleTask_5uqmfi",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_11x35fj",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_l58z16",
                "sourceRef": "RpaTask_mv6vf8",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "RpaTask_mv6vf8",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_2zii4c",
                "sourceRef": "ScriptTask_194zbbh",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_1kd50rk",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_ax72sf",
                "sourceRef": "StartEvent_oq8kgx",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_1sn2rwz",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_mwjwpp",
                "sourceRef": "ServiceTask_1kd50rk",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_17szhmq",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1wh8a33",
                "sourceRef": "UserTask_9zqvnc",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_17szhmq",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_6cdlec",
                "sourceRef": "UserTask_18ebqz7",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_k13m0i",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_uazurv",
                "sourceRef": "UserTask_16xdu4a",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "BusinessRuleTask_5uqmfi",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1wkpcld",
                "sourceRef": "ServiceTask_1sn2rwz",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_16xdu4a",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_o68xix",
                "sourceRef": "ServiceTask_17szhmq",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "scriptTask": {
            "outgoing": "SequenceFlow_2zii4c",
            "incoming": "SequenceFlow_1l89hcp",
            "businessProp": {"exec-script": "var cs = JSON.parse(MinCreditScoreResp.data)\n$pm.addMemVariable(\"mincreditscore\",cs.toString());"},
            "name": "Credit Score Benchmark",
            "id": "ScriptTask_194zbbh",
            "type": "bpmn:scriptTask",
            "events": []
        },
        "endEvent": [
            {
                "incoming": "SequenceFlow_1fe1gxq",
                "businessProp": {},
                "name": "End",
                "id": "EndEvent_p0c7r7",
                "type": "bpmn:endEvent"
            },
            {
                "incoming": "SequenceFlow_uazurv",
                "businessProp": {},
                "name": "End",
                "id": "EndEvent_k13m0i",
                "type": "bpmn:endEvent"
            }
        ],
        "serviceTask": [
            {
                "outgoing": "SequenceFlow_1wkpcld",
                "incoming": "SequenceFlow_mwjwpp",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "POST",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"insertEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"role\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"role\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true}]},\"functionUrl\":\"/updateEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCByAgent\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectKYCByAgent\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateKYCStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"approvedby\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateKYCStatus\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"insertDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"doctype\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"docname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"docexp\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"doclink\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"kycfield\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doctype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docexp\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doclink\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"kycfield\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"insertKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"remarks\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"age\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"UpdateKYCRemarks\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/UpdateKYCRemarks\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCByValidator\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectKYCByValidator\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectDocByKYC\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"kycfield\",\"allowOverride\":true},{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectDocByKYC\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"storeKYCApplication\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"approvedby\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/storeKYCApplication\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfMaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfMaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfFemaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfFemaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getMaleVsFemaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getMaleVsFemaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfApplByOccType\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfApplByOccType\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfAppVsRej\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfAppVsRej\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getByRejectionRemarks\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getByRejectionRemarks\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getTopFiveStates\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getTopFiveStates\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getPendingVsActedAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getPendingVsActedAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getApplByAgeGrp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getApplByAgeGrp\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getBotVsHumanApp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getBotVsHumanApp\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getKYCDetailsById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getKYCDetailsById\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumPending\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumPending\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumApproved\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumApproved\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumRejected\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumRejected\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getCities\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getCities\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getApplicationByCity\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getApplicationByCity\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getRepo\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getRepo\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateSentiment\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"review\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"sentiment\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateSentiment\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumBySentiment\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumBySentiment\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertEmployees",
                            "selectAllEmployees",
                            "updateEmployees",
                            "deleteEmployees",
                            "selectEmployees",
                            "selectKYCByAgent",
                            "updateKYCStatus",
                            "insertDocuments",
                            "selectAllDocuments",
                            "updateDocuments",
                            "deleteDocuments",
                            "selectDocuments",
                            "insertKYCApplications",
                            "selectAllKYCApplications",
                            "updateKYCApplications",
                            "deleteKYCApplications",
                            "selectKYCApplications",
                            "UpdateKYCRemarks",
                            "selectKYCByValidator",
                            "selectDocByKYC",
                            "storeKYCApplication",
                            "getNumOfAppl",
                            "getNumOfMaleAppl",
                            "getNumOfFemaleAppl",
                            "getMaleVsFemaleAppl",
                            "getNumOfApplByOccType",
                            "getNumOfAppVsRej",
                            "getByRejectionRemarks",
                            "getTopFiveStates",
                            "getPendingVsActedAppl",
                            "getApplByAgeGrp",
                            "getBotVsHumanApp",
                            "getKYCDetailsById",
                            "getNumPending",
                            "getNumApproved",
                            "getNumRejected",
                            "getCities",
                            "getApplicationByCity",
                            "getRepo",
                            "updateSentiment",
                            "getNumBySentiment"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/KYCDS/storeKYCApplication\"",
                    "parameters-body": [
                        {
                            "paramLocation": 1,
                            "value": "firstname",
                            "key": "firstname",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "lastname",
                            "key": "lastname",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "email",
                            "key": "email",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "mobile",
                            "key": "mobile",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "gender",
                            "key": "gender",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "maritalstatus",
                            "key": "maritalstatus",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "occtype",
                            "key": "occtype",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "add1",
                            "key": "add1",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "add2",
                            "key": "add2",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "add3",
                            "key": "add3",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "district",
                            "key": "district",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "postcode",
                            "key": "postcode",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "state",
                            "key": "state",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "country",
                            "key": "country",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "validatorid",
                            "key": "validatorid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "agentid",
                            "key": "agentid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "age",
                            "key": "age",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "\"Pending\"",
                            "key": "approvedby",
                            "allowOverride": true
                        }
                    ],
                    "data-type": 2,
                    "post-processor": "$pm.addMemVariable(\"custid\",InsertKYCResp.data.System_Generated_Properties.id);\n\nvar expiryDate = new Date (ipexp);\nvar monthsArr = [\"Jan\", \"Feb\", \"Mar\", \"Apr\", \"May\", \"Jun\", \"Jul\", \"Aug\", \"Sep\", \"Oct\", \"Nov\", \"Dec\"];\nvar expiryDateStr =  ((expiryDate.getDate() < 10) ? \"0\" + expiryDate.getDate() : expiryDate.getDate()) + \" \" + monthsArr[expiryDate.getMonth()] + \" \"  + expiryDate.getFullYear();\n\n\n$pm.addMemVariable(\"date\",expiryDateStr);",
                    "url": "\"http://localhost:3030/rest/webservices/context/application/KYCDS/storeKYCApplication\"",
                    "proxy": "false",
                    "bodyFormData": [
                        {
                            "paramLocation": 1,
                            "value": "firstname",
                            "key": "firstname",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "lastname",
                            "key": "lastname",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "email",
                            "key": "email",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "mobile",
                            "key": "mobile",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "gender",
                            "key": "gender",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "maritalstatus",
                            "key": "maritalstatus",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "occtype",
                            "key": "occtype",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "add1",
                            "key": "add1",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "add2",
                            "key": "add2",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "add3",
                            "key": "add3",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "district",
                            "key": "district",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "postcode",
                            "key": "postcode",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "state",
                            "key": "state",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "country",
                            "key": "country",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "validatorid",
                            "key": "validatorid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "agentid",
                            "key": "agentid",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "age",
                            "key": "age",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "\"Pending\"",
                            "key": "approvedby",
                            "allowOverride": true
                        }
                    ],
                    "port": "",
                    "response": "InsertKYCResp",
                    "data-source": "{\"name\":\"KYCDS\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"682b6794-55a7-4470-b973-ed67c592e3cb\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"06db4af5-6252-43b8-b9d6-33799ac5f78c\",\"createdOn\":\"2021-04-01T23:07:29.923-04:00\",\"modifiedOn\":\"2021-04-01T23:07:29.923-04:00\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "pre-processor": "$pm.addMemVariable(\"agentid\",\"krishnachandiran.r@asg.com\");\r\n$pm.addMemVariable(\"validatorid\",\"vijay.sb@asg.com\");",
                    "data-source-function": "{\"name\":\"storeKYCApplication\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"approvedby\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/storeKYCApplication\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                    "parameters": []
                },
                "name": "Store KYC Application",
                "id": "ServiceTask_1sn2rwz",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_1fe1gxq",
                "incoming": "SequenceFlow_8f14cl",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "PUT",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"insertEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"role\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"role\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true}]},\"functionUrl\":\"/updateEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true}]},\"functionUrl\":\"/selectEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCByAgent\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true}]},\"functionUrl\":\"/selectKYCByAgent\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateKYCStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"approvedby\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateKYCStatus\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"insertDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doctype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docexp\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doclink\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"kycfield\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doctype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docexp\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doclink\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"kycfield\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/selectDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"insertKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/selectAllKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/selectKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"UpdateKYCRemarks\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/UpdateKYCRemarks\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCByValidator\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true}]},\"functionUrl\":\"/selectKYCByValidator\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectDocByKYC\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"kycfield\",\"allowOverride\":true},{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"custid\",\"allowOverride\":true}]},\"functionUrl\":\"/selectDocByKYC\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"storeKYCApplication\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/storeKYCApplication\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfMaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfMaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfFemaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfFemaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getMaleVsFemaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getMaleVsFemaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfApplByOccType\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfApplByOccType\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfAppVsRej\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfAppVsRej\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getByRejectionRemarks\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getByRejectionRemarks\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getTopFiveStates\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getTopFiveStates\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getPendingVsActedAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getPendingVsActedAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getApplByAgeGrp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getApplByAgeGrp\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getBotVsHumanApp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getBotVsHumanApp\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getKYCDetailsById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/getKYCDetailsById\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertEmployees",
                            "selectAllEmployees",
                            "updateEmployees",
                            "deleteEmployees",
                            "selectEmployees",
                            "selectKYCByAgent",
                            "updateKYCStatus",
                            "insertDocuments",
                            "selectAllDocuments",
                            "updateDocuments",
                            "deleteDocuments",
                            "selectDocuments",
                            "insertKYCApplications",
                            "selectAllKYCApplications",
                            "updateKYCApplications",
                            "deleteKYCApplications",
                            "selectKYCApplications",
                            "UpdateKYCRemarks",
                            "selectKYCByValidator",
                            "selectDocByKYC",
                            "storeKYCApplication",
                            "getNumOfAppl",
                            "getNumOfMaleAppl",
                            "getNumOfFemaleAppl",
                            "getMaleVsFemaleAppl",
                            "getNumOfApplByOccType",
                            "getNumOfAppVsRej",
                            "getByRejectionRemarks",
                            "getTopFiveStates",
                            "getPendingVsActedAppl",
                            "getApplByAgeGrp",
                            "getBotVsHumanApp",
                            "getKYCDetailsById"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/KYCDS/updateKYCStatus\"",
                    "parameters-body": [
                        {
                            "paramLocation": 1,
                            "value": "status",
                            "key": "status",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "\"Bot\"",
                            "key": "approvedby",
                            "allowOverride": true
                        }
                    ],
                    "data-type": 2,
                    "post-processor": "",
                    "url": "\"http://localhost:3030/rest/webservices/context/application/KYCDS/updateKYCStatus\"",
                    "proxy": "false",
                    "bodyFormData": [
                        {
                            "paramLocation": 1,
                            "value": "status",
                            "key": "status",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "\"Bot\"",
                            "key": "approvedby",
                            "allowOverride": true
                        }
                    ],
                    "port": "",
                    "response": "BotRejResp",
                    "data-source": "{\"name\":\"KYCDS\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"335b31d9-b533-42c2-8ecc-bf07301c6ac0\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"08f93bf4-3f3a-4738-95ff-5f4050733b33\",\"createdOn\":\"2020-05-06T16:26:30.914+05:30\",\"modifiedOn\":\"2020-05-06T16:26:30.914+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"updateKYCStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"approvedby\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateKYCStatus\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                    "parameters": [{
                        "paramLocation": 1,
                        "type": "Query",
                        "value": "custid",
                        "key": "id",
                        "allowOverride": true
                    }]
                },
                "name": "Update Bot Decision",
                "id": "ServiceTask_ogezsb",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_1pdjvoj",
                "incoming": "SequenceFlow_1c15ca5",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "PUT",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"insertEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"role\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"role\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true}]},\"functionUrl\":\"/updateEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCByAgent\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectKYCByAgent\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateKYCStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"approvedby\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateKYCStatus\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"insertDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doctype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docexp\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doclink\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"kycfield\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doctype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docexp\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doclink\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"kycfield\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"insertKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"UpdateKYCRemarks\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/UpdateKYCRemarks\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCByValidator\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectKYCByValidator\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectDocByKYC\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"kycfield\",\"allowOverride\":true},{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectDocByKYC\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"storeKYCApplication\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"approvedby\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/storeKYCApplication\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfMaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfMaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfFemaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfFemaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getMaleVsFemaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getMaleVsFemaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfApplByOccType\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfApplByOccType\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfAppVsRej\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfAppVsRej\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getByRejectionRemarks\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getByRejectionRemarks\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getTopFiveStates\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getTopFiveStates\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getPendingVsActedAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getPendingVsActedAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getApplByAgeGrp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getApplByAgeGrp\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getBotVsHumanApp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getBotVsHumanApp\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getKYCDetailsById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getKYCDetailsById\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumPending\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumPending\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumApproved\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumApproved\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumRejected\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumRejected\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getCities\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getCities\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getApplicationByCity\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getApplicationByCity\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getRepo\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getRepo\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateSentiment\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"review\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"sentiment\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateSentiment\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertEmployees",
                            "selectAllEmployees",
                            "updateEmployees",
                            "deleteEmployees",
                            "selectEmployees",
                            "selectKYCByAgent",
                            "updateKYCStatus",
                            "insertDocuments",
                            "selectAllDocuments",
                            "updateDocuments",
                            "deleteDocuments",
                            "selectDocuments",
                            "insertKYCApplications",
                            "selectAllKYCApplications",
                            "updateKYCApplications",
                            "deleteKYCApplications",
                            "selectKYCApplications",
                            "UpdateKYCRemarks",
                            "selectKYCByValidator",
                            "selectDocByKYC",
                            "storeKYCApplication",
                            "getNumOfAppl",
                            "getNumOfMaleAppl",
                            "getNumOfFemaleAppl",
                            "getMaleVsFemaleAppl",
                            "getNumOfApplByOccType",
                            "getNumOfAppVsRej",
                            "getByRejectionRemarks",
                            "getTopFiveStates",
                            "getPendingVsActedAppl",
                            "getApplByAgeGrp",
                            "getBotVsHumanApp",
                            "getKYCDetailsById",
                            "getNumPending",
                            "getNumApproved",
                            "getNumRejected",
                            "getCities",
                            "getApplicationByCity",
                            "getRepo",
                            "updateSentiment"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/KYCDS/updateKYCStatus\"",
                    "parameters-body": [
                        {
                            "paramLocation": 1,
                            "value": "vstatus",
                            "key": "status",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "\"Human\"",
                            "key": "approvedby",
                            "allowOverride": true
                        }
                    ],
                    "data-type": 2,
                    "url": "\"http://localhost:3030/rest/webservices/context/application/KYCDS/updateKYCStatus\"",
                    "proxy": "false",
                    "bodyFormData": [
                        {
                            "paramLocation": 1,
                            "value": "vstatus",
                            "key": "status",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "\"Human\"",
                            "key": "approvedby",
                            "allowOverride": true
                        }
                    ],
                    "port": "",
                    "response": "UpdateRejectionResp",
                    "data-source": "{\"name\":\"KYCDS\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"682b6794-55a7-4470-b973-ed67c592e3cb\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"d01f6edc-d6f4-4247-bb98-bf121d0602b0\",\"createdOn\":\"2020-12-14T15:41:57.704+05:30\",\"modifiedOn\":\"2020-12-14T15:41:57.704+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"updateKYCStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"approvedby\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateKYCStatus\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                    "parameters": [{
                        "paramLocation": 1,
                        "type": "Query",
                        "value": "custid",
                        "key": "id",
                        "allowOverride": true
                    }]
                },
                "name": "Update Rejection",
                "id": "ServiceTask_7lwl8j",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_pxwonu",
                "incoming": "SequenceFlow_y8e1sw",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "PUT",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"insertEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"role\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"role\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true}]},\"functionUrl\":\"/updateEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCByAgent\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectKYCByAgent\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateKYCStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"approvedby\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateKYCStatus\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"insertDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"doctype\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"docname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"docexp\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"doclink\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"kycfield\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doctype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docexp\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doclink\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"kycfield\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"insertKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"remarks\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"age\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"UpdateKYCRemarks\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/UpdateKYCRemarks\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCByValidator\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectKYCByValidator\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectDocByKYC\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"kycfield\",\"allowOverride\":true},{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectDocByKYC\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"storeKYCApplication\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"approvedby\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/storeKYCApplication\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfMaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfMaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfFemaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfFemaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getMaleVsFemaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getMaleVsFemaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfApplByOccType\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfApplByOccType\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfAppVsRej\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfAppVsRej\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getByRejectionRemarks\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getByRejectionRemarks\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getTopFiveStates\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getTopFiveStates\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getPendingVsActedAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getPendingVsActedAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getApplByAgeGrp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getApplByAgeGrp\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getBotVsHumanApp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getBotVsHumanApp\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getKYCDetailsById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getKYCDetailsById\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumPending\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumPending\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumApproved\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumApproved\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumRejected\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumRejected\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getCities\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getCities\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getApplicationByCity\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getApplicationByCity\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getRepo\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getRepo\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateSentiment\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"review\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"sentiment\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateSentiment\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumBySentiment\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumBySentiment\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertEmployees",
                            "selectAllEmployees",
                            "updateEmployees",
                            "deleteEmployees",
                            "selectEmployees",
                            "selectKYCByAgent",
                            "updateKYCStatus",
                            "insertDocuments",
                            "selectAllDocuments",
                            "updateDocuments",
                            "deleteDocuments",
                            "selectDocuments",
                            "insertKYCApplications",
                            "selectAllKYCApplications",
                            "updateKYCApplications",
                            "deleteKYCApplications",
                            "selectKYCApplications",
                            "UpdateKYCRemarks",
                            "selectKYCByValidator",
                            "selectDocByKYC",
                            "storeKYCApplication",
                            "getNumOfAppl",
                            "getNumOfMaleAppl",
                            "getNumOfFemaleAppl",
                            "getMaleVsFemaleAppl",
                            "getNumOfApplByOccType",
                            "getNumOfAppVsRej",
                            "getByRejectionRemarks",
                            "getTopFiveStates",
                            "getPendingVsActedAppl",
                            "getApplByAgeGrp",
                            "getBotVsHumanApp",
                            "getKYCDetailsById",
                            "getNumPending",
                            "getNumApproved",
                            "getNumRejected",
                            "getCities",
                            "getApplicationByCity",
                            "getRepo",
                            "updateSentiment",
                            "getNumBySentiment"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/KYCDS/updateKYCStatus\"",
                    "parameters-body": [
                        {
                            "paramLocation": 1,
                            "value": "vstatus",
                            "key": "status",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "\"Human\"",
                            "key": "approvedby",
                            "allowOverride": true
                        }
                    ],
                    "data-type": 2,
                    "url": "\"http://localhost:3030/rest/webservices/context/application/KYCDS/updateKYCStatus\"",
                    "proxy": "false",
                    "bodyFormData": [
                        {
                            "paramLocation": 1,
                            "value": "vstatus",
                            "key": "status",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "\"Human\"",
                            "key": "approvedby",
                            "allowOverride": true
                        }
                    ],
                    "port": "",
                    "response": "UpdateApprovalResp",
                    "data-source": "{\"name\":\"KYCDS\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"682b6794-55a7-4470-b973-ed67c592e3cb\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"06db4af5-6252-43b8-b9d6-33799ac5f78c\",\"createdOn\":\"2021-04-01T23:07:29.923-04:00\",\"modifiedOn\":\"2021-04-01T23:07:29.923-04:00\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"updateKYCStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"approvedby\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateKYCStatus\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                    "parameters": [{
                        "paramLocation": 1,
                        "type": "Query",
                        "value": "custid",
                        "key": "id",
                        "allowOverride": true
                    }]
                },
                "name": "Update Approval",
                "id": "ServiceTask_mn8uaw",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_u2vsb8",
                "incoming": "SequenceFlow_1pdjvoj",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "PUT",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"insertEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"role\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"role\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true}]},\"functionUrl\":\"/updateEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCByAgent\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectKYCByAgent\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateKYCStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"approvedby\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateKYCStatus\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"insertDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doctype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docexp\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doclink\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"kycfield\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doctype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docexp\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doclink\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"kycfield\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"insertKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"UpdateKYCRemarks\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/UpdateKYCRemarks\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCByValidator\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectKYCByValidator\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectDocByKYC\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"kycfield\",\"allowOverride\":true},{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectDocByKYC\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"storeKYCApplication\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"approvedby\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/storeKYCApplication\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfMaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfMaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfFemaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfFemaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getMaleVsFemaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getMaleVsFemaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfApplByOccType\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfApplByOccType\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfAppVsRej\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfAppVsRej\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getByRejectionRemarks\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getByRejectionRemarks\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getTopFiveStates\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getTopFiveStates\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getPendingVsActedAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getPendingVsActedAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getApplByAgeGrp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getApplByAgeGrp\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getBotVsHumanApp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getBotVsHumanApp\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getKYCDetailsById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getKYCDetailsById\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumPending\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumPending\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumApproved\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumApproved\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumRejected\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumRejected\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getCities\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getCities\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getApplicationByCity\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getApplicationByCity\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getRepo\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getRepo\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateSentiment\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"review\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"sentiment\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateSentiment\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertEmployees",
                            "selectAllEmployees",
                            "updateEmployees",
                            "deleteEmployees",
                            "selectEmployees",
                            "selectKYCByAgent",
                            "updateKYCStatus",
                            "insertDocuments",
                            "selectAllDocuments",
                            "updateDocuments",
                            "deleteDocuments",
                            "selectDocuments",
                            "insertKYCApplications",
                            "selectAllKYCApplications",
                            "updateKYCApplications",
                            "deleteKYCApplications",
                            "selectKYCApplications",
                            "UpdateKYCRemarks",
                            "selectKYCByValidator",
                            "selectDocByKYC",
                            "storeKYCApplication",
                            "getNumOfAppl",
                            "getNumOfMaleAppl",
                            "getNumOfFemaleAppl",
                            "getMaleVsFemaleAppl",
                            "getNumOfApplByOccType",
                            "getNumOfAppVsRej",
                            "getByRejectionRemarks",
                            "getTopFiveStates",
                            "getPendingVsActedAppl",
                            "getApplByAgeGrp",
                            "getBotVsHumanApp",
                            "getKYCDetailsById",
                            "getNumPending",
                            "getNumApproved",
                            "getNumRejected",
                            "getCities",
                            "getApplicationByCity",
                            "getRepo",
                            "updateSentiment"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/KYCDS/UpdateKYCRemarks\"",
                    "parameters-body": [{
                        "paramLocation": 1,
                        "value": "remarks",
                        "key": "remarks",
                        "allowOverride": true
                    }],
                    "data-type": 2,
                    "url": "\"http://localhost:3030/rest/webservices/context/application/KYCDS/UpdateKYCRemarks\"",
                    "proxy": "false",
                    "bodyFormData": [{
                        "paramLocation": 1,
                        "value": "remarks",
                        "key": "remarks",
                        "allowOverride": true
                    }],
                    "port": "",
                    "response": "RejectRemarksResp",
                    "data-source": "{\"name\":\"KYCDS\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"682b6794-55a7-4470-b973-ed67c592e3cb\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"d01f6edc-d6f4-4247-bb98-bf121d0602b0\",\"createdOn\":\"2020-12-14T15:41:57.704+05:30\",\"modifiedOn\":\"2020-12-14T15:41:57.704+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"UpdateKYCRemarks\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/UpdateKYCRemarks\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                    "parameters": [{
                        "paramLocation": 1,
                        "type": "Query",
                        "value": "custid",
                        "key": "id",
                        "allowOverride": true
                    }]
                },
                "name": "Update Remarks",
                "id": "ServiceTask_1sp47xh",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_mwjwpp",
                "incoming": "SequenceFlow_ax72sf",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "GET",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"insertEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"role\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"role\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true}]},\"functionUrl\":\"/updateEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectEmployees\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectEmployees\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCByAgent\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectKYCByAgent\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateKYCStatus\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"approvedby\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateKYCStatus\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"insertDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"doctype\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"docname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"docexp\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"doclink\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"kycfield\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doctype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"docexp\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"doclink\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"kycfield\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectDocuments\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectDocuments\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"insertKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"remarks\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"age\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"deleteKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/deleteKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCApplications\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectKYCApplications\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"UpdateKYCRemarks\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"remarks\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/UpdateKYCRemarks\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectKYCByValidator\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectKYCByValidator\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"selectDocByKYC\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"kycfield\",\"allowOverride\":true},{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"custid\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectDocByKYC\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"storeKYCApplication\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"firstname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"lastname\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"email\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"mobile\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"gender\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"maritalstatus\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"occtype\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add1\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add2\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"add3\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"district\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"postcode\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"country\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"validatorid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"agentid\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"type\":\"\",\"value\":\"String\",\"key\":\"approvedby\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/storeKYCApplication\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfMaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfMaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfFemaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfFemaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getMaleVsFemaleAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getMaleVsFemaleAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfApplByOccType\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfApplByOccType\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumOfAppVsRej\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumOfAppVsRej\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getByRejectionRemarks\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getByRejectionRemarks\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getTopFiveStates\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getTopFiveStates\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getPendingVsActedAppl\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getPendingVsActedAppl\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getApplByAgeGrp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getApplByAgeGrp\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getBotVsHumanApp\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getBotVsHumanApp\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getKYCDetailsById\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getKYCDetailsById\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumPending\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumPending\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumApproved\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumApproved\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumRejected\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumRejected\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getCities\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getCities\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getApplicationByCity\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":2,\"type\":\"Query\",\"value\":\"\",\"key\":\"state\",\"allowOverride\":true},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getApplicationByCity\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getRepo\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getRepo\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"updateSentiment\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"review\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"sentiment\",\"allowOverride\":true}],\"parameters\":[{\"paramLocation\":1,\"type\":\"Query\",\"value\":\"\",\"key\":\"id\",\"allowOverride\":true}]},\"functionUrl\":\"/updateSentiment\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                            "{\"name\":\"getNumBySentiment\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/getNumBySentiment\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertEmployees",
                            "selectAllEmployees",
                            "updateEmployees",
                            "deleteEmployees",
                            "selectEmployees",
                            "selectKYCByAgent",
                            "updateKYCStatus",
                            "insertDocuments",
                            "selectAllDocuments",
                            "updateDocuments",
                            "deleteDocuments",
                            "selectDocuments",
                            "insertKYCApplications",
                            "selectAllKYCApplications",
                            "updateKYCApplications",
                            "deleteKYCApplications",
                            "selectKYCApplications",
                            "UpdateKYCRemarks",
                            "selectKYCByValidator",
                            "selectDocByKYC",
                            "storeKYCApplication",
                            "getNumOfAppl",
                            "getNumOfMaleAppl",
                            "getNumOfFemaleAppl",
                            "getMaleVsFemaleAppl",
                            "getNumOfApplByOccType",
                            "getNumOfAppVsRej",
                            "getByRejectionRemarks",
                            "getTopFiveStates",
                            "getPendingVsActedAppl",
                            "getApplByAgeGrp",
                            "getBotVsHumanApp",
                            "getKYCDetailsById",
                            "getNumPending",
                            "getNumApproved",
                            "getNumRejected",
                            "getCities",
                            "getApplicationByCity",
                            "getRepo",
                            "updateSentiment",
                            "getNumBySentiment"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/KYCDS/getRepo\"",
                    "parameters-body": [],
                    "data-type": 2,
                    "post-processor": "var repohost = repohostresp.data.results[0].repohost;\n$pm.addMemVariable(\"hostname\",repohost);\n//$pm.addMemVariable(\"repohost\",repohost);",
                    "url": "\"http://localhost:3030/rest/webservices/context/application/KYCDS/getRepo\"",
                    "proxy": "false",
                    "port": "",
                    "response": "repohostresp",
                    "data-source": "{\"name\":\"KYCDS\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"682b6794-55a7-4470-b973-ed67c592e3cb\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"41acf169-c3a4-446c-b717-ddd0eee7f3c9\",\"createdOn\":\"2021-03-28T01:03:23.325-04:00\",\"modifiedOn\":\"2021-03-28T01:03:23.325-04:00\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "data-source-function": "{\"name\":\"getRepo\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/getRepo\",\"baseUrl\":\"/KYCDS\",\"datasourceType\":0}",
                    "parameters": [
                        {
                            "paramLocation": 3,
                            "type": "Query",
                            "value": "",
                            "key": "limit",
                            "allowOverride": true,
                            "advance": "limit"
                        },
                        {
                            "paramLocation": 3,
                            "type": "Query",
                            "value": "",
                            "key": "offset",
                            "allowOverride": true,
                            "advance": "offset"
                        }
                    ]
                },
                "name": "Get Repo Host",
                "id": "ServiceTask_1kd50rk",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_o68xix",
                "incoming": [
                    "SequenceFlow_1wh8a33",
                    "SequenceFlow_6cdlec"
                ],
                "businessProp": {
                    "headers": [],
                    "method": "POST",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"execute\",\"datasourceId\":\"7e81e84b-ffec-43b6-8f83-a8d941d662a6\",\"functionProperties\":{\"headers\":[],\"method\":\"POST\",\"dataType\":0,\"body\":{\"$schema\":\"http://json-schema.org/draft-04/schema#\",\"type\":\"object\",\"properties\":{\"q\":{\"type\":\"string\"},\"target\":{\"type\":\"string\"}},\"required\":[\"q\",\"target\"]},\"parameters\":[]},\"functionUrl\":\"/\",\"baseUrl\":\"/Translate\",\"datasourceType\":4}"
                        ],
                        "options": [
                            "Select",
                            "execute"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/Translate/execute\"",
                    "parameters-body": "{\n  \"q\": review,\n  \"target\": \"en\"\n}",
                    "data-type": 0,
                    "post-processor": "",
                    "url": "http://localhost:3030/rest/webservices/context/application/Translate/execute",
                    "proxy": "false",
                    "port": "",
                    "response": "TranslateResp",
                    "data-source": "{\"name\":\"Translate\",\"datasourceType\":4,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"682b6794-55a7-4470-b973-ed67c592e3cb\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"7e81e84b-ffec-43b6-8f83-a8d941d662a6\",\"createdOn\":\"2021-04-01T23:07:35.015-04:00\",\"modifiedOn\":\"2021-04-01T23:07:35.015-04:00\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "json",
                    "host": "",
                    "data-source-function": "{\"name\":\"execute\",\"datasourceId\":\"717461b0-302a-4b4b-93f1-4c3c11824633\",\"functionProperties\":{\"headers\":[],\"method\":\"POST\",\"dataType\":0,\"body\":{\"$schema\":\"http://json-schema.org/draft-04/schema#\",\"type\":\"object\",\"properties\":{\"q\":{\"type\":\"string\"},\"target\":{\"type\":\"string\"}},\"required\":[\"q\",\"target\"]},\"parameters\":[]},\"functionUrl\":\"/execute\",\"baseUrl\":\"/Translate\",\"datasourceType\":4}",
                    "parameters": [],
                    "bodyJson": "{\n  \"q\": review,\n  \"target\": \"en\"\n}"
                },
                "name": "Translate",
                "id": "ServiceTask_17szhmq",
                "type": "bpmn:serviceTask",
                "events": []
            }
        ],
        "exclusiveGateway": [
            {
                "outgoing": [
                    "SequenceFlow_j9nvsg",
                    "SequenceFlow_8f14cl"
                ],
                "incoming": "SequenceFlow_ennq82",
                "businessProp": {},
                "name": "For Validator?",
                "id": "ExclusiveGateway_eai3qq",
                "type": "bpmn:exclusiveGateway"
            },
            {
                "outgoing": [
                    "SequenceFlow_y8e1sw",
                    "SequenceFlow_1c15ca5"
                ],
                "incoming": "SequenceFlow_yj2mfm",
                "businessProp": {},
                "name": "Is Valid?",
                "id": "ExclusiveGateway_1py7166",
                "type": "bpmn:exclusiveGateway"
            }
        ],
        "businessRuleTask": {
            "outgoing": "SequenceFlow_1l89hcp",
            "incoming": "SequenceFlow_1wkpcld",
            "businessProp": {
                "output": "MinCreditScoreResp",
                "parameters-collaps": [{
                    "reference": "ApplcantDetails",
                    "configurations": {
                        "showDelButton": false,
                        "showAddButton": false
                    },
                    "groupLabel": "ApplcantDetails",
                    "label": [
                        "Name",
                        "Value"
                    ],
                    "type": "attributeGroup",
                    "primaryPanal": [
                        {
                            "reference": "name",
                            "configurations": {"disableEdit": true},
                            "type": "inputWithoutLable",
                            "maxLength": 30,
                            "events": {},
                            "parentRef": "ApplcantDetails"
                        },
                        {
                            "reference": "value",
                            "type": "inputWithoutLable",
                            "events": {},
                            "parentRef": "ApplcantDetails"
                        }
                    ],
                    "listType": "inputList"
                }],
                "businessRulePlaceholderUrl": "{{HOST}}/rest/decisiontable/{{CONTEXT}}/{{APPLICATION}}/EquatorDemo.model/EquatorDemo.decisiontable",
                "decision-model": "{\"name\":\"DecisionRules.dm\",\"type\":17,\"parentName\":\"Decision Models\",\"location\":\"/EKYCDemoApp/Decision Models\",\"properties\":{},\"meta\":null,\"size\":8114,\"errorMessage\":null,\"parentId\":\"39efccc2-4a34-4505-a502-62fe13ed53ec\",\"projectId\":\"682b6794-55a7-4470-b973-ed67c592e3cb\",\"referenceId\":null,\"namespaceId\":\"EquatorDemo\",\"content\":null,\"id\":\"1b51b8d7-da2f-4527-9bb3-42834a3fb5c8\",\"createdOn\":\"2020-12-14T15:42:02.422+05:30\",\"modifiedOn\":\"2020-12-14T15:42:02.722+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"contentAsString\":\"\",\"contentAsBytes\":null,\"buildProgress\":false}",
                "decisionmodel-id": "EquatorDemo.model",
                "ApplcantDetails": [
                    {
                        "name": "occtype",
                        "objectName": "ApplcantDetails",
                        "type": null,
                        "value": "occtype"
                    },
                    {
                        "name": "age",
                        "objectName": "ApplcantDetails",
                        "type": null,
                        "value": "age"
                    }
                ],
                "parameters": [
                    {
                        "name": "occtype",
                        "objectName": "ApplcantDetails",
                        "type": null,
                        "value": "occtype"
                    },
                    {
                        "name": "age",
                        "objectName": "ApplcantDetails",
                        "type": null,
                        "value": "age"
                    }
                ],
                "decisiontable-id": "EquatorDemo.decisiontable"
            },
            "name": "Min Credit Score",
            "id": "BusinessRuleTask_5uqmfi",
            "type": "bpmn:businessRuleTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_ax72sf",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Receive KYC Request",
            "id": "StartEvent_oq8kgx",
            "type": "bpmn:startEvent"
        },
        "id": "Process_1vktt9r",
        "rpaTask": {
            "outgoing": "SequenceFlow_l58z16",
            "incoming": "SequenceFlow_2zii4c",
            "businessProp": {
                "botName": "validateCredit",
                "botLocation": "%252FEKYCDemoApp%252FRPA%2520Models%252FvalidateCredit.bot",
                "parameters": [
                    {
                        "name": "gfirstname",
                        "type": null,
                        "value": "firstname"
                    },
                    {
                        "name": "glastname",
                        "type": null,
                        "value": "lastname"
                    },
                    {
                        "name": "gemail",
                        "type": null,
                        "value": "email"
                    },
                    {
                        "name": "gssn",
                        "type": null,
                        "value": "ipnum"
                    },
                    {
                        "name": "mincreditscore",
                        "type": null,
                        "value": "mincreditscore"
                    }
                ],
                "botPlaceholderUrl": "{{HOST}}/rest/context/{{CONTEXT}}/application/{{APPLICATION}}/bot/{{BOT}}"
            },
            "name": "Credit Score Bot",
            "id": "RpaTask_mv6vf8",
            "type": "bpmn:rpaTask",
            "events": []
        },
        "userTask": [
            {
                "outgoing": "SequenceFlow_ennq82",
                "incoming": "SequenceFlow_l58z16",
                "businessProp": {
                    "formType": "Custom",
                    "assignee-role": {
                        "roleMeta": "",
                        "roleName": "Agent",
                        "actualData": "{\"name\":\"Agent.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/eKycAppl/App Roles\",\"properties\":{\"isWorkspaceReady\":false},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":\"805dd11b-15de-4332-bac6-1c014525ccf3\",\"projectId\":\"7a8a64c4-ea1c-432b-8a0c-4cabd3b876ea\",\"referenceId\":\"f67c228a-cddd-4cbe-9ee2-4eb96c218b0d\",\"namespaceId\":null,\"content\":null,\"id\":\"ec8f0f7c-bac0-4c17-b7c7-88ace90e392f\",\"createdOn\":\"2020-09-03T16:52:36.359+05:30\",\"modifiedOn\":\"2020-09-03T16:52:36.382+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsBytes\":null,\"contentAsString\":\"\"}"
                    },
                    "fromUser": "\"KYC Process\"",
                    "form-variables": [
                        {
                            "ref": "firstname",
                            "regex": "",
                            "default-value": "",
                            "readonly": true,
                            "label": "First Name",
                            "fieldtype": "Input",
                            "type": "string",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "lastname",
                            "regex": "",
                            "default-value": "",
                            "readonly": true,
                            "label": "Last Name",
                            "fieldtype": "Input",
                            "type": "string",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "KYCstatus",
                            "regex": "",
                            "default-value": "",
                            "readonly": true,
                            "label": "Status",
                            "fieldtype": "Input",
                            "type": "string",
                            "mandatory": true,
                            "errormsg": ""
                        }
                    ],
                    "subject": "\"KYC Status Update for \" + firstname",
                    "assignees-cus": [],
                    "form-url-type": "\"\"",
                    "body-replace-strings": [],
                    "form-url": "\"\"",
                    "assignee-type": "Role",
                    "existingForm": "",
                    "email-type": "text/html",
                    "attribute-references": [],
                    "form-url-helper": "\"\"",
                    "formName": "\"KYC Status Update\"",
                    "pre-processor": "if(status == 0){\n    $pm.addMemVariable(\"KYCstatus\",\"Waiting for Validator\");\n}else if(status == 1){\n    $pm.addMemVariable(\"KYCstatus\",\"Approved\");\n}else{\n    $pm.addMemVariable(\"KYCstatus\",\"Rejected\");\n}",
                    "notify-type": "Message Only"
                },
                "name": "Update Customer",
                "id": "UserTask_11x35fj",
                "type": "bpmn:userTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_yj2mfm",
                "incoming": "SequenceFlow_j9nvsg",
                "businessProp": {
                    "formType": "Existing",
                    "assignee-role": {
                        "roleMeta": "",
                        "roleName": "Validator",
                        "actualData": "{\"name\":\"Validator.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/eKycAppl/App Roles\",\"properties\":{\"isWorkspaceReady\":false},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":\"805dd11b-15de-4332-bac6-1c014525ccf3\",\"projectId\":\"7a8a64c4-ea1c-432b-8a0c-4cabd3b876ea\",\"referenceId\":\"5deb943b-fef3-4b4b-bb2d-3b8dd6d90e8b\",\"namespaceId\":null,\"content\":null,\"id\":\"c2a85fac-f526-4b8b-aa68-078f4a529d1e\",\"createdOn\":\"2020-09-03T16:52:36.442+05:30\",\"modifiedOn\":\"2020-09-03T16:52:36.465+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsBytes\":null,\"contentAsString\":\"\"}"
                    },
                    "fromUser": "\"KYC Process\"",
                    "form-variables": [
                        {
                            "ref": "custid",
                            "regex": "",
                            "default-value": "",
                            "readonly": false,
                            "label": "",
                            "fieldtype": "",
                            "type": "",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "fullname",
                            "regex": "",
                            "default-value": "",
                            "readonly": false,
                            "label": "",
                            "fieldtype": "",
                            "type": "",
                            "mandatory": true,
                            "errormsg": ""
                        }
                    ],
                    "subject": "\"New Request from \" + firstname",
                    "assignees-cus": [],
                    "form-url-type": "\"absolute\"",
                    "body-replace-strings": [],
                    "form-url": "\"http://localhost:3030/rest/projects/682b6794-55a7-4470-b973-ed67c592e3cb/files/9eab02d4-05b9-4be0-b8fb-749576a0df41/preview\"",
                    "assignee-type": "Role",
                    "existingForm": "{\"name\":\"ValidateRequest.vm\",\"type\":1,\"parentName\":\"UI Models\",\"location\":\"/EKYCDemoApp/UI Models\",\"properties\":{\"isWorkspaceReady\":true,\"visualDistFolderId\":\"52024524-95fa-46f6-948b-7654d4fb8dc0\",\"appGen\":true},\"meta\":\"{}\",\"size\":315768,\"errorMessage\":null,\"parentId\":\"d3b5e1c8-b893-46e4-bb38-d120ebc90caa\",\"projectId\":\"682b6794-55a7-4470-b973-ed67c592e3cb\",\"referenceId\":null,\"namespaceId\":\"\",\"content\":null,\"id\":\"9eab02d4-05b9-4be0-b8fb-749576a0df41\",\"createdOn\":\"2021-03-29T03:24:02.973-04:00\",\"modifiedOn\":\"2021-03-29T23:00:25.893-04:00\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsBytes\":null,\"contentAsString\":\"\"}",
                    "email-type": "text/html",
                    "attribute-references": [],
                    "form-url-helper": "{\"id\":\"9eab02d4-05b9-4be0-b8fb-749576a0df41\",\"projectId\":\"682b6794-55a7-4470-b973-ed67c592e3cb\",\"name\":\"ValidateRequest.vm\",\"fileLocation\":\"/EKYCDemoApp/UI Models\"}",
                    "notify-type": "With Action"
                },
                "name": "Inform Validator",
                "id": "UserTask_1aq3ho0",
                "type": "bpmn:userTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_1wh8a33",
                "incoming": "SequenceFlow_u2vsb8",
                "businessProp": {
                    "formType": "Custom",
                    "assignee-role": {
                        "roleMeta": "",
                        "roleName": "Agent",
                        "actualData": "{\"name\":\"Agent.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/EKYCDemoApp/App Roles\",\"properties\":{\"isWorkspaceReady\":false},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":\"d74c5c65-c6ea-449b-91f3-08b73b0fbe5f\",\"projectId\":\"79ca6328-5264-4110-adbe-f6c19c819b6b\",\"referenceId\":\"ffa2a950-6bda-4314-9c22-8f2d68e07c48\",\"namespaceId\":null,\"content\":null,\"id\":\"bcb8565c-8fef-404b-9c0f-f20a3eb0c3f1\",\"createdOn\":\"2020-10-04T20:16:09.039+05:30\",\"modifiedOn\":\"2020-10-04T20:16:09.061+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}"
                    },
                    "fromUser": "\"KYC Process\"",
                    "form-variables": [
                        {
                            "ref": "firstname",
                            "regex": "",
                            "default-value": "",
                            "readonly": true,
                            "label": "First Name",
                            "fieldtype": "Input",
                            "type": "string",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "lastname",
                            "regex": "",
                            "default-value": "",
                            "readonly": true,
                            "label": "Last Name",
                            "fieldtype": "Input",
                            "type": "string",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "newstatus",
                            "regex": "",
                            "default-value": "",
                            "readonly": true,
                            "label": "Decision",
                            "fieldtype": "Input",
                            "type": "string",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "remarks",
                            "regex": "",
                            "default-value": "",
                            "readonly": true,
                            "label": "Remarks",
                            "fieldtype": "Input",
                            "type": "string",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "review",
                            "regex": "",
                            "default-value": "",
                            "readonly": false,
                            "label": "Feedback",
                            "fieldtype": "Text Area",
                            "type": "string",
                            "mandatory": true,
                            "errormsg": ""
                        }
                    ],
                    "subject": "\"KYC Status available for \" + firstname",
                    "assignees-cus": [],
                    "form-url-type": "\"\"",
                    "body-replace-strings": [],
                    "form-url": "\"\"",
                    "assignee-type": "Role",
                    "existingForm": "",
                    "email-type": "text/html",
                    "attribute-references": [],
                    "form-url-helper": "\"\"",
                    "formName": "\"KYC Status Rejected\"",
                    "pre-processor": "$pm.addMemVariable(\"newstatus\",\"Rejected\");\n",
                    "notify-type": "With Action"
                },
                "name": "Notify Rejection to Customer",
                "id": "UserTask_9zqvnc",
                "type": "bpmn:userTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_6cdlec",
                "incoming": "SequenceFlow_pxwonu",
                "businessProp": {
                    "formType": "Custom",
                    "assignee-role": {
                        "roleMeta": "",
                        "roleName": "Agent",
                        "actualData": "{\"name\":\"Agent.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/EKYCDemoApp/App Roles\",\"properties\":{\"isWorkspaceReady\":false},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":\"d74c5c65-c6ea-449b-91f3-08b73b0fbe5f\",\"projectId\":\"79ca6328-5264-4110-adbe-f6c19c819b6b\",\"referenceId\":\"ffa2a950-6bda-4314-9c22-8f2d68e07c48\",\"namespaceId\":null,\"content\":null,\"id\":\"bcb8565c-8fef-404b-9c0f-f20a3eb0c3f1\",\"createdOn\":\"2020-10-04T20:16:09.039+05:30\",\"modifiedOn\":\"2020-10-04T20:16:09.061+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}"
                    },
                    "fromUser": "\"KYC Process\"",
                    "form-variables": [
                        {
                            "ref": "firstname",
                            "regex": "",
                            "default-value": "",
                            "readonly": true,
                            "label": "Firstname",
                            "fieldtype": "Input",
                            "type": "string",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "lastname",
                            "regex": "",
                            "default-value": "",
                            "readonly": true,
                            "label": "Lastname",
                            "fieldtype": "Input",
                            "type": "string",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "newstatus",
                            "regex": "",
                            "default-value": "",
                            "readonly": true,
                            "label": "Decision",
                            "fieldtype": "Input",
                            "type": "string",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "review",
                            "regex": "",
                            "default-value": "",
                            "readonly": false,
                            "label": "Feedback",
                            "fieldtype": "Text Area",
                            "type": "string",
                            "mandatory": true,
                            "errormsg": ""
                        }
                    ],
                    "subject": "\"KYC Status available for \" + firstname",
                    "assignees-cus": [],
                    "form-url-type": "\"\"",
                    "body-replace-strings": [],
                    "form-url": "\"\"",
                    "assignee-type": "Role",
                    "existingForm": "",
                    "email-type": "text/html",
                    "attribute-references": [],
                    "form-url-helper": "\"\"",
                    "formName": "\"KYC Status Approved\"",
                    "pre-processor": "$pm.addMemVariable(\"newstatus\",\"Approved\");",
                    "notify-type": "With Action"
                },
                "name": "Notify Approval to Customer",
                "id": "UserTask_18ebqz7",
                "type": "bpmn:userTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_uazurv",
                "incoming": "SequenceFlow_o68xix",
                "businessProp": {
                    "formType": "Custom",
                    "assignee-role": {
                        "roleMeta": "",
                        "roleName": "Validator",
                        "actualData": "{\"name\":\"Validator.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/EKYCDemoApp/App Roles\",\"properties\":{\"isWorkspaceReady\":false},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":\"c642a21e-ab04-4613-ac6f-11eeff79dedb\",\"projectId\":\"682b6794-55a7-4470-b973-ed67c592e3cb\",\"referenceId\":\"9e0e98bf-a09a-44d2-90e1-2f8eaef5a00e\",\"namespaceId\":null,\"content\":null,\"id\":\"7678f072-1c43-4ca8-b06c-e962ad3f7a45\",\"createdOn\":\"2020-12-14T15:41:57.501+05:30\",\"modifiedOn\":\"2020-12-14T15:41:57.541+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsBytes\":null,\"contentAsString\":\"\"}"
                    },
                    "fromUser": "\"KYC Process\"",
                    "form-variables": [
                        {
                            "ref": "review",
                            "regex": "",
                            "default-value": "",
                            "readonly": true,
                            "label": "Original Review Review",
                            "fieldtype": "Text Area",
                            "type": "string",
                            "mandatory": true,
                            "errormsg": ""
                        },
                        {
                            "ref": "engReview",
                            "regex": "",
                            "default-value": "",
                            "readonly": true,
                            "label": "Translated Review",
                            "fieldtype": "Text Area",
                            "type": "string",
                            "mandatory": true,
                            "errormsg": ""
                        }
                    ],
                    "subject": "\"Review\"",
                    "form-url-type": "\"\"",
                    "body-replace-strings": [],
                    "form-url": "\"\"",
                    "assignee-type": "Role",
                    "existingForm": "",
                    "email-type": "text/html",
                    "attribute-references": [],
                    "form-url-helper": "\"\"",
                    "formName": "\"Review\"",
                    "pre-processor": "$pm.addMemVariable(\"engReview\",TranslateResp.output.translatedText);",
                    "notify-type": "Message Only"
                },
                "name": "Notify Validator",
                "id": "UserTask_16xdu4a",
                "type": "bpmn:userTask",
                "events": []
            }
        ]
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_1vktt9r",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "ScriptTask_194zbbh",
                    "Bounds": {
                        "cx": 861.0000462538011,
                        "cy": 333.000001157373,
                        "x": 784.0200428968675,
                        "width": 153.9600067138672,
                        "y": 294.83500024184565,
                        "height": 76.33000183105469
                    },
                    "id": "ScriptTask_194zbbh_ve"
                },
                {
                    "bpmnElement": "EndEvent_p0c7r7",
                    "Bounds": {
                        "cx": 1418,
                        "cy": 709.171875,
                        "x": 1400,
                        "width": 36,
                        "y": 679.5,
                        "height": 59.34375
                    },
                    "id": "EndEvent_p0c7r7_ve"
                },
                {
                    "bpmnElement": "EndEvent_k13m0i",
                    "Bounds": {
                        "cx": 874.000025510788,
                        "cy": 1234.000035891775,
                        "x": 856.000025510788,
                        "width": 36,
                        "y": 1204.328160891775,
                        "height": 59.34375
                    },
                    "id": "EndEvent_k13m0i_ve"
                },
                {
                    "bpmnElement": "ServiceTask_1sn2rwz",
                    "Bounds": {
                        "cx": 325.0000076743961,
                        "cy": 208.00001060716795,
                        "x": 248.0200043174625,
                        "width": 153.9600067138672,
                        "y": 169.8350096916406,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_1sn2rwz_ve"
                },
                {
                    "bpmnElement": "ServiceTask_ogezsb",
                    "Bounds": {
                        "cx": 1418.0000228881836,
                        "cy": 608.0000228881836,
                        "x": 1341.02001953125,
                        "width": 153.9600067138672,
                        "y": 569.8350219726562,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_ogezsb_ve"
                },
                {
                    "bpmnElement": "ServiceTask_7lwl8j",
                    "Bounds": {
                        "cx": 576.9999923706055,
                        "cy": 698.0000228881836,
                        "x": 500.0199890136719,
                        "width": 153.9600067138672,
                        "y": 659.8350219726562,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_7lwl8j_ve"
                },
                {
                    "bpmnElement": "ServiceTask_mn8uaw",
                    "Bounds": {
                        "cx": 1144.0000228881836,
                        "cy": 698.0000228881836,
                        "x": 1067.02001953125,
                        "width": 153.9600067138672,
                        "y": 659.8350219726562,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_mn8uaw_ve"
                },
                {
                    "bpmnElement": "ServiceTask_1sp47xh",
                    "Bounds": {
                        "cx": 576.9999923706055,
                        "cy": 840.0000228881836,
                        "x": 500.0199890136719,
                        "width": 153.9600067138672,
                        "y": 801.8350219726562,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_1sp47xh_ve"
                },
                {
                    "bpmnElement": "ServiceTask_1kd50rk",
                    "Bounds": {
                        "cx": 325,
                        "cy": 97.99999237060547,
                        "x": 248.0199966430664,
                        "width": 153.9600067138672,
                        "y": 59.834991455078125,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_1kd50rk_ve"
                },
                {
                    "bpmnElement": "ServiceTask_17szhmq",
                    "Bounds": {
                        "cx": 874.0000228881836,
                        "cy": 971.0000228881836,
                        "x": 797.02001953125,
                        "width": 153.9600067138672,
                        "y": 932.8350219726562,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_17szhmq_ve"
                },
                {
                    "bpmnElement": "ExclusiveGateway_eai3qq",
                    "Bounds": {
                        "cx": 1367.109375,
                        "cy": 474.828125,
                        "x": 1342.9453125,
                        "width": 74.109375,
                        "y": 461.5,
                        "height": 73.34375
                    },
                    "id": "ExclusiveGateway_eai3qq_ve"
                },
                {
                    "bpmnElement": "ExclusiveGateway_1py7166",
                    "Bounds": {
                        "cx": 861,
                        "cy": 656.828125,
                        "x": 836,
                        "width": 50,
                        "y": 643.5,
                        "height": 73.34375
                    },
                    "id": "ExclusiveGateway_1py7166_ve"
                },
                {
                    "bpmnElement": "BusinessRuleTask_5uqmfi",
                    "Bounds": {
                        "cx": 605.0000386244064,
                        "cy": 333.00000115737294,
                        "x": 528.0200352674728,
                        "width": 153.9600067138672,
                        "y": 294.8350002418456,
                        "height": 76.33000183105469
                    },
                    "id": "BusinessRuleTask_5uqmfi_ve"
                },
                {
                    "bpmnElement": "StartEvent_oq8kgx",
                    "Bounds": {
                        "cx": 61.35156382061541,
                        "cy": 109.18750236975035,
                        "x": 44.31250132061541,
                        "width": 113.453125,
                        "y": 79.51562736975035,
                        "height": 59.34375
                    },
                    "id": "StartEvent_oq8kgx_ve"
                },
                {
                    "bpmnElement": "RpaTask_mv6vf8",
                    "Bounds": {
                        "cx": 1102.0000534361607,
                        "cy": 333.000001157373,
                        "x": 1025.020050079227,
                        "width": 153.9600067138672,
                        "y": 294.83500024184565,
                        "height": 76.33000183105469
                    },
                    "id": "RpaTask_mv6vf8_ve"
                },
                {
                    "bpmnElement": "UserTask_11x35fj",
                    "Bounds": {
                        "cx": 1418.0000228881836,
                        "cy": 332.99999237060547,
                        "x": 1341.02001953125,
                        "width": 153.9600067138672,
                        "y": 294.8349914550781,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_11x35fj_ve"
                },
                {
                    "bpmnElement": "UserTask_1aq3ho0",
                    "Bounds": {
                        "cx": 874.0000228881836,
                        "cy": 513.9999923706055,
                        "x": 797.02001953125,
                        "width": 153.9600067138672,
                        "y": 475.8349914550781,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_1aq3ho0_ve"
                },
                {
                    "bpmnElement": "UserTask_9zqvnc",
                    "Bounds": {
                        "cx": 576.9999923706055,
                        "cy": 971.0000228881836,
                        "x": 500.0199890136719,
                        "width": 153.9600067138672,
                        "y": 932.8350219726562,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_9zqvnc_ve"
                },
                {
                    "bpmnElement": "UserTask_18ebqz7",
                    "Bounds": {
                        "cx": 1144.0000228881836,
                        "cy": 971.0000228881836,
                        "x": 1067.02001953125,
                        "width": 153.9600067138672,
                        "y": 932.8350219726562,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_18ebqz7_ve"
                },
                {
                    "bpmnElement": "UserTask_16xdu4a",
                    "Bounds": {
                        "cx": 874.0000466412312,
                        "cy": 1102.9999935875821,
                        "x": 797.0200432842976,
                        "width": 153.9600067138672,
                        "y": 1064.8349926720548,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_16xdu4a_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "1418.00001953125",
                            "y": "371.1649914550781"
                        },
                        {
                            "x": "1418.00001953125",
                            "y": "416.332495727539"
                        },
                        {
                            "x": "1367.9453125",
                            "y": "416.332495727539"
                        },
                        {
                            "x": "1367.9453125",
                            "y": "461.5"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_ennq82",
                    "id": "SequenceFlow_ennq82_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "1342.9453125",
                            "y": "486.5"
                        },
                        {
                            "x": "1146.962666015625",
                            "y": "486.5"
                        },
                        {
                            "x": "1146.962666015625",
                            "y": "513.9999914550781"
                        },
                        {
                            "x": "950.98001953125",
                            "y": "513.9999914550781"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_j9nvsg",
                    "id": "SequenceFlow_j9nvsg_ve",
                    "BPMNLabel": {"Bounds": {
                        "cx": 1167,
                        "cy": 477,
                        "x": 1127,
                        "width": 80,
                        "y": 465,
                        "height": 24
                    }}
                },
                {
                    "waypoint": [
                        {
                            "x": "874.00001953125",
                            "y": "552.1649914550782"
                        },
                        {
                            "x": "874.00001953125",
                            "y": "597.832495727539"
                        },
                        {
                            "x": "861",
                            "y": "597.832495727539"
                        },
                        {
                            "x": "861",
                            "y": "643.5"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_yj2mfm",
                    "id": "SequenceFlow_yj2mfm_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "886",
                            "y": "668.5"
                        },
                        {
                            "x": "976.510009765625",
                            "y": "668.5"
                        },
                        {
                            "x": "976.510009765625",
                            "y": "698.0000219726562"
                        },
                        {
                            "x": "1067.02001953125",
                            "y": "698.0000219726562"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_y8e1sw",
                    "id": "SequenceFlow_y8e1sw_ve",
                    "BPMNLabel": {"Bounds": {
                        "cx": 997,
                        "cy": 660,
                        "x": 957,
                        "width": 80,
                        "y": 648,
                        "height": 24
                    }}
                },
                {
                    "waypoint": [
                        {
                            "x": "836",
                            "y": "668.5"
                        },
                        {
                            "x": "744.989994506836",
                            "y": "668.5"
                        },
                        {
                            "x": "744.989994506836",
                            "y": "698.0000219726562"
                        },
                        {
                            "x": "653.9799890136719",
                            "y": "698.0000219726562"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1c15ca5",
                    "id": "SequenceFlow_1c15ca5_ve",
                    "BPMNLabel": {"Bounds": {
                        "cx": 765,
                        "cy": 660,
                        "x": 725,
                        "width": 80,
                        "y": 648,
                        "height": 24
                    }}
                },
                {
                    "waypoint": [
                        {
                            "x": "576.9999890136719",
                            "y": "736.1650219726563"
                        },
                        {
                            "x": "576.9999890136719",
                            "y": "801.8350219726562"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1pdjvoj",
                    "id": "SequenceFlow_1pdjvoj_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "576.9999890136719",
                            "y": "878.1650219726563"
                        },
                        {
                            "x": "576.9999890136719",
                            "y": "932.8350219726562"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_u2vsb8",
                    "id": "SequenceFlow_u2vsb8_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "1144.00001953125",
                            "y": "736.1650219726563"
                        },
                        {
                            "x": "1144.00001953125",
                            "y": "932.8350219726562"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_pxwonu",
                    "id": "SequenceFlow_pxwonu_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "1418.00001953125",
                            "y": "646.1650219726563"
                        },
                        {
                            "x": "1418",
                            "y": "679.5"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1fe1gxq",
                    "id": "SequenceFlow_1fe1gxq_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "1367.9453125",
                            "y": "511.5"
                        },
                        {
                            "x": "1367.9453125",
                            "y": "540.6675109863281"
                        },
                        {
                            "x": "1418.00001953125",
                            "y": "540.6675109863281"
                        },
                        {
                            "x": "1418.00001953125",
                            "y": "569.8350219726562"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_8f14cl",
                    "id": "SequenceFlow_8f14cl_ve",
                    "BPMNLabel": {"Bounds": {
                        "cx": 1413,
                        "cy": 518,
                        "x": 1373,
                        "width": 80,
                        "y": 506,
                        "height": 24
                    }}
                },
                {
                    "waypoint": [
                        {
                            "x": "681.9800352674729",
                            "y": "333.0000002418456"
                        },
                        {
                            "x": "784.0200428968675",
                            "y": "333.00000024184567"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1l89hcp",
                    "id": "SequenceFlow_1l89hcp_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "1178.980050079227",
                            "y": "333.00000024184567"
                        },
                        {
                            "x": "1341.02001953125",
                            "y": "332.99999145507815"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_l58z16",
                    "id": "SequenceFlow_l58z16_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "937.9800428968675",
                            "y": "333.00000024184567"
                        },
                        {
                            "x": "1025.020050079227",
                            "y": "333.00000024184567"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_2zii4c",
                    "id": "SequenceFlow_2zii4c_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "80.31250132061541",
                            "y": "97.51562736975035"
                        },
                        {
                            "x": "248.0199966430664",
                            "y": "97.99999145507812"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_ax72sf",
                    "id": "SequenceFlow_ax72sf_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "324.9999966430664",
                            "y": "136.1649914550781"
                        },
                        {
                            "x": "325.0000043174625",
                            "y": "169.8350096916406"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_mwjwpp",
                    "id": "SequenceFlow_mwjwpp_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "653.9799890136719",
                            "y": "971.0000219726562"
                        },
                        {
                            "x": "797.02001953125",
                            "y": "971.0000219726562"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1wh8a33",
                    "id": "SequenceFlow_1wh8a33_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "1067.02001953125",
                            "y": "971.0000219726562"
                        },
                        {
                            "x": "950.98001953125",
                            "y": "971.0000219726562"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_6cdlec",
                    "id": "SequenceFlow_6cdlec_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "874.0000432842976",
                            "y": "1141.1649926720547"
                        },
                        {
                            "x": "874.000025510788",
                            "y": "1204.328160891775"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_uazurv",
                    "id": "SequenceFlow_uazurv_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "401.98000431746254",
                            "y": "208.0000096916406"
                        },
                        {
                            "x": "465.0000197924677",
                            "y": "208.0000096916406"
                        },
                        {
                            "x": "465.0000197924677",
                            "y": "333.0000002418456"
                        },
                        {
                            "x": "528.0200352674728",
                            "y": "333.0000002418456"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1wkpcld",
                    "id": "SequenceFlow_1wkpcld_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "874.00001953125",
                            "y": "1009.1650219726563"
                        },
                        {
                            "x": "874.0000432842976",
                            "y": "1064.8349926720548"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_o68xix",
                    "id": "SequenceFlow_o68xix_ve"
                }
            ]
        },
        "id": "Process_1vktt9r_ve"
    },
    "collaboration": {}
}