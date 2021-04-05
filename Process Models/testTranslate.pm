{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "ServiceTask_3jm1ws",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_hpcpl",
                "sourceRef": "StartEvent_1ddhqcp",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_1ifp215",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_e111ra",
                "sourceRef": "ServiceTask_3jm1ws",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_e111ra",
            "businessProp": {},
            "name": "End",
            "id": "EndEvent_1ifp215",
            "type": "bpmn:endEvent"
        },
        "serviceTask": {
            "outgoing": "SequenceFlow_e111ra",
            "incoming": "SequenceFlow_hpcpl",
            "businessProp": {
                "headers": [],
                "method": "POST",
                "data-source-function-data": {
                    "values": [
                        "",
                        "{\"name\":\"execute\",\"datasourceId\":\"717461b0-302a-4b4b-93f1-4c3c11824633\",\"functionProperties\":{\"headers\":[],\"method\":\"POST\",\"dataType\":0,\"body\":{\"$schema\":\"http://json-schema.org/draft-04/schema#\",\"type\":\"object\",\"properties\":{\"q\":{\"type\":\"string\"},\"target\":{\"type\":\"string\"}},\"required\":[\"q\",\"target\"]},\"parameters\":[]},\"functionUrl\":\"/\",\"baseUrl\":\"/Translate\",\"datasourceType\":4}"
                    ],
                    "options": [
                        "Select",
                        "execute"
                    ]
                },
                "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/Translate/execute\"",
                "parameters-body": "{\n  \"q\": \"No entiendo la raz�n por la que mi petici�n no ha sido aprobada\",\n  \"target\": \"en\"\n}",
                "data-type": 0,
                "url": "http://localhost:3030/rest/webservices/context/application/Translate/execute",
                "proxy": "false",
                "port": "",
                "response": "translateresp",
                "data-source": "{\"name\":\"Translate\",\"datasourceType\":4,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"682b6794-55a7-4470-b973-ed67c592e3cb\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"717461b0-302a-4b4b-93f1-4c3c11824633\",\"createdOn\":\"2021-02-08T17:18:31.763+05:30\",\"modifiedOn\":\"2021-02-08T17:18:31.763+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                "reqType": "json",
                "host": "",
                "data-source-function": "{\"name\":\"execute\",\"datasourceId\":\"717461b0-302a-4b4b-93f1-4c3c11824633\",\"functionProperties\":{\"headers\":[],\"method\":\"POST\",\"dataType\":0,\"body\":{\"$schema\":\"http://json-schema.org/draft-04/schema#\",\"type\":\"object\",\"properties\":{\"q\":{\"type\":\"string\"},\"target\":{\"type\":\"string\"}},\"required\":[\"q\",\"target\"]},\"parameters\":[]},\"functionUrl\":\"/execute\",\"baseUrl\":\"/Translate\",\"datasourceType\":4}",
                "parameters": [],
                "bodyJson": "{\n  \"q\": \"No entiendo la raz�n por la que mi petici�n no ha sido aprobada\",\n  \"target\": \"en\"\n}"
            },
            "name": "Test Translate",
            "id": "ServiceTask_3jm1ws",
            "type": "bpmn:serviceTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_hpcpl",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_1ddhqcp",
            "type": "bpmn:startEvent"
        },
        "id": "Process_123bvtk"
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_123bvtk",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "StartEvent_1ddhqcp",
                    "Bounds": {
                        "cx": 192,
                        "cy": 231.5,
                        "x": 174,
                        "width": 36,
                        "y": 202,
                        "height": 59
                    },
                    "id": "StartEvent_1ddhqcp_ve"
                },
                {
                    "bpmnElement": "ServiceTask_3jm1ws",
                    "Bounds": {
                        "cx": 410,
                        "cy": 218.50000762939453,
                        "x": 333.0199966430664,
                        "width": 153.9600067138672,
                        "y": 180.3350067138672,
                        "height": 76.33000183105469
                    },
                    "id": "ServiceTask_3jm1ws_ve"
                },
                {
                    "bpmnElement": "EndEvent_1ifp215",
                    "Bounds": {
                        "cx": 588,
                        "cy": 230,
                        "x": 570,
                        "width": 36,
                        "y": 200.5,
                        "height": 59
                    },
                    "id": "EndEvent_1ifp215_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "210",
                            "y": "220"
                        },
                        {
                            "x": "271.5099983215332",
                            "y": "220"
                        },
                        {
                            "x": "271.5099983215332",
                            "y": "218.49999908447265"
                        },
                        {
                            "x": "333.0199966430664",
                            "y": "218.49999908447265"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_hpcpl",
                    "id": "SequenceFlow_hpcpl_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "486.97999664306644",
                            "y": "218.50000671386718"
                        },
                        {
                            "x": "570",
                            "y": "218.5"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_e111ra",
                    "id": "SequenceFlow_e111ra_ve"
                }
            ]
        },
        "id": "Process_123bvtk_ve"
    },
    "collaboration": {}
}