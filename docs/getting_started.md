# Getting Started

Once you have running the server, you can start making http requests. This is how it works behind the scenes.

![](../app/assets/images/authentication_logic.png)

This a basic example. If you need more information about of how to get more information about the Access Token, you can
visit the [User Authentication Section](./user_authentication.md) for more detail explanation about the requests.

- Make sure to have Rails running on your local machine. You can start the server by running `rails server` and visit `localhost:3000`.

- Send a GET request to `localhost:3000/api/login` to get the authentication token. You will need to pass a JSON with the following params:

```json
{
  "user": {
    "email": "juan.lopez@gmail.com",
    "displayName": "Juan López",
    "uid": "someGoogleUid123",
  }
}
```

- If the user doesn't exists, a new user is created with those params and the authentication token as well. The authentication token will be saved until the user logged in again or if the user sends an HTTP request to `/api/logout`

- If the user exists, the previous authentication token is deleted and a new token is created.

- The user information is returned using the JWT gem.

- You can validate your authentication token by making a http request to `/api/hello` and placed your authentication in the headers.

GET request
```
localhost:3000/api/hello
```

Headers:
```
"Authorization": "ey389b...full token"
```

Response:
```json
{ response: "Hello World" }
```

If you need more information about the User Authentication and the Access Token, please visit [User Authentication Section](./user_authentication.md)
