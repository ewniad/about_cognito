#!sh

#aws cognito-idp create-user-pool \
#	--pool-name ew_02
#
#{
#    "UserPool": {
#        "Id": "us-west-2_EsC2uYu97",
#        "Name": "ew_02",
#        "Policies": {
#            "PasswordPolicy": {
#                "MinimumLength": 8,
#                "RequireUppercase": true,
#                "RequireLowercase": true,
#                "RequireNumbers": true,
#                "RequireSymbols": true,
#                "TemporaryPasswordValidityDays": 7
#            }
#        },
#        "LambdaConfig": {},
#        "LastModifiedDate": "2021-02-14T19:01:16.302000+09:00",
#        "CreationDate": "2021-02-14T19:01:16.302000+09:00",
#        "SchemaAttributes": [
#            {
#                "Name": "sub",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": false,
#                "Required": true,
#                "StringAttributeConstraints": {
#                    "MinLength": "1",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "name",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "0",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "given_name",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "0",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "family_name",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "0",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "middle_name",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "0",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "nickname",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "0",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "preferred_username",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "0",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "profile",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "0",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "picture",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "0",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "website",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "0",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "email",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "0",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "email_verified",
#                "AttributeDataType": "Boolean",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false
#            },
#            {
#                "Name": "gender",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "0",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "birthdate",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "10",
#                    "MaxLength": "10"
#                }
#            },
#            {
#                "Name": "zoneinfo",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "0",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "locale",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "0",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "phone_number",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "0",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "phone_number_verified",
#                "AttributeDataType": "Boolean",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false
#            },
#            {
#                "Name": "address",
#                "AttributeDataType": "String",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "StringAttributeConstraints": {
#                    "MinLength": "0",
#                    "MaxLength": "2048"
#                }
#            },
#            {
#                "Name": "updated_at",
#                "AttributeDataType": "Number",
#                "DeveloperOnlyAttribute": false,
#                "Mutable": true,
#                "Required": false,
#                "NumberAttributeConstraints": {
#                    "MinValue": "0"
#                }
#            }
#        ],
#        "VerificationMessageTemplate": {
#            "DefaultEmailOption": "CONFIRM_WITH_CODE"
#        },
#        "MfaConfiguration": "OFF",
#        "EstimatedNumberOfUsers": 0,
#        "EmailConfiguration": {
#            "EmailSendingAccount": "COGNITO_DEFAULT"
#        },
#        "AdminCreateUserConfig": {
#            "AllowAdminCreateUserOnly": false,
#            "UnusedAccountValidityDays": 7
#        },
#        "Arn": "arn:aws:cognito-idp:us-west-2:672548517703:userpool/us-west-2_EsC2uYu97"
#    }
#}

#aws cognito-idp delete-user-pool \
#--user-pool-id us-west-2_3NDTx6dDe

