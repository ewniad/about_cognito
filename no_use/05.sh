#!sh

#Enable username password based authentication (ALLOW_USER_PASSWORD_AUTH)

token=$(\
aws cognito-idp initiate-auth \
	--auth-flow USER_PASSWORD_AUTH \
	--auth-parameters USERNAME=user1,PASSWORD=password1 \
	--client-id  60otdkb9vbdu39uko9b7au4r89 \
	--query AuthenticationResult.IdToken \
)

echo $token

exit

{
    "ChallengeParameters": {},
    "AuthenticationResult": {
        "AccessToken": "eyJraWQiOiJqendCV1NPc3hVbG1Ja2EzN1BBNlJEUllGSndZSHY5aVo2Q3J5bXlFK0ZrPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiIwNWUwYzQwOS1iYzQ2LTQyYTktODhjOS0wNzJjMWI5OGIyODUiLCJldmVudF9pZCI6IjM1YjRlNjMxLTlhNGItNGE3Ni05YzhmLTFhNzdkZjgyM2ExMyIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE2MTMzNTYyNzksImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC51cy13ZXN0LTIuYW1hem9uYXdzLmNvbVwvdXMtd2VzdC0yXzNWbFQyU1FVUyIsImV4cCI6MTYxMzM1OTg3OSwiaWF0IjoxNjEzMzU2Mjc5LCJqdGkiOiI4YmY3YjhkYS1lNTkwLTQyMjUtYTU2MS1lNzEyOTM2ZGFmMDMiLCJjbGllbnRfaWQiOiI2MG90ZGtiOXZiZHUzOXVrbzliN2F1NHI4OSIsInVzZXJuYW1lIjoidXNlcjEifQ.reXm-3yjUvVp1sEBQSbSuTCrYTbq-SRsdWNypIscOaUqempCd25dfwvlz9eTaDJx8FvkktXcd0PWfcuOkwbywXvJD5eaqcHPiYHJeCRru0rO9MICZbBwqh3G6i6AMmvoEtkXtLRPllk7Ibj6w2qnf3uCf2EfPxExToo1e5XAtCvBMleDLPZkc6nzr6jqRIyPwFu0xL1fw6hDrCjeKKAV6JdiQufYkwvsdZ_1eISlyAuxFJacZa2bSgY4wkewwqVFQc7APZaYuxMz_c5AXTL9rebYyLCFb5949xN5xoQNQ4QQRgC_AHy4ux0Vy784l0zIB-_AZQHb5z8mJhiTETHVyQ",
        "ExpiresIn": 3600,
        "TokenType": "Bearer",
        "RefreshToken": "eyJjdHkiOiJKV1QiLCJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiUlNBLU9BRVAifQ.fmrJXc5yPxbhoSdGIva25jZ13Gx3VjzRw1BhA5VcTqvtFAeOVISOf-lmOI1gjrdw3FtnR6VsjVgSM73zUp7jItC4z-4YR-110uuadKMytnAaR0-XQf_feOjR8p5rxXNCF3RyFVSuUeTvNBLc6DZ-XWBLkQvwjZYo4oqFS4qDh77JJcwVTVc7wC7j90P6HLsHrLQ52wZ7xpES6Gh0G4Q1xDoAOe7LK8_5s5CIWChROvyjJzwPhJyUC9pEpf9iqdQsrxza84V8qv0jD7j1CzFPL9mhoTOR2bXypmThBaKEA3PlVv6wPVX8nZ9IqTyyaVrA5634cyzLA5XVWytZX3dhTw.t3h-YlwYdCgZ5gEH.aQlDwbzUQXdqJ7A-6MeBD9rYZGFppSRaCHwwyOJzQ0WZ7Q797Xr2ZLR7xSyQVJ3ZUIGnFQZnE2lvUZWj3B9XNCxxHrjjQ-m4DMHOtfvWjUFFlRAsuTRek13Nu_zvxqLZ9og3Ni0zZbkn5_5bLrjYCt8oPjPtpcpqkzAIvJyJS5apP4BouGzE0j7m-i4q4-h2gZv4PcdInFGShxZcvjSpeYClKvDpjYsIAoKo5ge9sieJSMZxjO7MaynYJk_CrVMIxBl6wGgL1GXpSRYKxnBgfzzF1PXnZbDT-yJsIzKYfB9JWIIjaPs7Bp1aC1euNRLGK3XSVb5rS2G4Fa97XvEBMnwujuKdqC1h-tIL3CH7CpnGY98U8-UFSpPWvIGBeyFYPrme50I6UpthQOX4QVTwvHuMqxRT8X5AvG86fjD2TxeoCaK7RVv8cT7KUG3pmGVSyPPhEvDbn4EoBl58Cmmi9I8JwWVPwmEtOf5S5aZsqiUyBwMfgONPU5tl2oM5UBNKgD_YJF1m9ugtQiknk8oFDAn4oXOhG-z3ztKeZe297gU6ZFCRp9MmqqCxkPwEsIAuodMnXUwUYLK9fZB2OREh6oVg2vEhrfJpl_7ZIjdscG4L8_MlYygkIqRaoiZz7zwbNT2kMBKu702iFECU9F0JBsfnnf9Zpa-XsHIPH7jYU_uavnEWT2e3OfeSLSYCNdfeMhLFbZPro5bRM4BwHTzVG1lflYpelEQrJGq-AbGkySd_4xHuK_lYf0sBhDH4H5S6rtmcZw2e2IVzv_yTTBcCYSfJEnmEZC0oxC81riXgTkSvZNzebIqvbUX4d6e6jjG-bTaQ34OUBB0tvEDa7tIfl4WGR1cNfQZXZYHXy2Bo-XCLjgax2fCXV0bWMRqEeGLzKo5oQTt1Z9g1l5UeAbZJ1uJFVaF3m2XVmvypr5ek3aQvg5e5-jk8gghqDTeGdW-e5pQiyhk0nT0oAzh8jlczKKacvPEu3BQoRg1WyAYBuQfREL31IeWzqILoAlHrXXn6X5RtbpchycQByyowg5Dn6Sb-8A2P81tDs7haX7yZxzZl9YUHytJ80RUPRbhqTmPD5j8NBSAwt8WkYA_ZK_Qdu2U2teHY7_RXfMqHNK5fZgWxsh_Hkv9tZxh2qq7cdA_LmH52W9uBspISYXVFVNO3twYyCu2QXe1k5-i0QL_dJfrK3-LdHPBCwSP3HZBJarq-lxmhswNylFRN9-fws_XrRniVIdKUEOQHadp0UhzEtXqsWbqpQ-gvqtuUlJ7uE4vbMqo.hBN3ft7GCgvI5JwbxI16Qg",
        "IdToken": "eyJraWQiOiJSRkNQVDZMMW9wU3FsRlc4MXZyUktMbExwSHFBc3RLWDJcL1RGdmU5STV6UT0iLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIwNWUwYzQwOS1iYzQ2LTQyYTktODhjOS0wNzJjMWI5OGIyODUiLCJhdWQiOiI2MG90ZGtiOXZiZHUzOXVrbzliN2F1NHI4OSIsImV2ZW50X2lkIjoiMzViNGU2MzEtOWE0Yi00YTc2LTljOGYtMWE3N2RmODIzYTEzIiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE2MTMzNTYyNzksImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC51cy13ZXN0LTIuYW1hem9uYXdzLmNvbVwvdXMtd2VzdC0yXzNWbFQyU1FVUyIsImNvZ25pdG86dXNlcm5hbWUiOiJ1c2VyMSIsImV4cCI6MTYxMzM1OTg3OSwiaWF0IjoxNjEzMzU2Mjc5fQ.RA8t-Kmqdnci1V9Z-t9b4zhHbHpKJp0nlJ7OQJ75VG80bBHs7YFYbrs1Mxk2vd7q_KuZTycsYnJuaaf-wt2Ona1OdadpeanGRIbB6B5odkH8ldlyK-FM2lDViNG4Cq8_NHT2HDfR69Dpw8ZtVOghPWS5zCBV7OInrKb64hAYSUjUiWjbAfzvYGg7DOX4GLaIyjl6W5vppB-9e0mOfnGRltkd3XPhbdSI8R6yvYYHPHrzDYldPSVOKwBgy3c1rCFHoT24roL5g5qLx9bHB0CqXVQM61CuO35CzeQY57aX0Fu4XqA3uoMi8BMBa_6iEeTZToFZCXDCFsTC8ksq8FgeEQ"
    }
}
