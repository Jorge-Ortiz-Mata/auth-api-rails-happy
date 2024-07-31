# API - Participants.

## Getting Started.

Make sure to have your JWT token and include it within the headers under the name "Authorization".
You can't request data from the database if you don't have your authentication token.

## Postman

If you use Postman to test the API, It is possible you get the following error:

```
ActionController::InvalidAuthenticityToken (Can't verify CSRF token authenticity.):
```

In the app/controller/api_controller.rb file you have to add the next line:

```
  protect_from_forgery with: :null_session
```

This configuration allows access from any service.
Make sure to delete it once you push your code to GitHub

## Index

- [Create Participant](#create-participant)
- [Update Participant](#update-participant)
- [Delete Participant](#delete-participant)
- [Candidates](#candidates)
- [Hire History](#hire-history)

## Create Participant

In order to create a participant, follow the next configuration:

METHOD: `POST`

URL: `http://127.0.0.1:3000/api/participants/`

HEADERS:
```
headers: {
  "Authorization": "ey2384...token",
  "Content-Type": "application/json"
}
```

BODY:
```
{
  "participant": {
    "name": "Juan Perez",
    "job_title": "Software engineer",
    "area": "CD",
    "source": "LinkedIn",
    "email": "juan.perez@gmail.com",
    "phone_number": "1234567890",
    "phase": "RECEPTION_DATE",
  }
}
```

RESPONSE - STATUS 200:
```
{
  "participant": {
    "id": 6,
    "name": "Juan Perez",
    "job_title": "Software engineer",
    "area": "CD",
    "source": "LinkedIn",
    "email": "juan.perez@gmail.com",
    "phone_number": "1234567890",
    "status": "IN_PROCESS",
    "created_at": "2023-05-29T20:39:24.802Z",
    "updated_at": "2023-05-29T20:39:24.802Z",
    "phase": "RECEPTION_DATE"
  }
}
```

RESPONSE - STATUS 422:
```
{
  "errors": [
    {
      "name": [
        "Nombre no puede estar vacío"
      ],
      "job_title": [
        "Puesto no puede estar vacío"
      ],
      "area": [
        "Area no puede estar vacío"
      ],
      "phone_number": [
        "Numero de telefono no puede estar vacío"
      ],
      "phase": [
        "Fase no puede estar vacío"
      ]
    }
  ]
}
```

## Update Participant

In order to update a participant, follow the next configuration:

METHOD: `PATCH`

URL: `http://127.0.0.1:3000/api/participants/:id`

HEADERS:
```
headers: {
  "Authorization": "ey2384...token",
  "Content-Type": "application/json"
}
```

BODY:
```
{
  "participant": {
    "name": "Juan Perez Actualizado",
  }
}
```

RESPONSE - STATUS 200:
```
{
  "participant": {
    "id": 6,
    "name": "Juan Perez Actualizado",
    "job_title": "Software engineer",
    "area": "CD",
    "source": "LinkedIn",
    "email": "juan.perez@gmail.com",
    "phone_number": "1234567890",
    "status": "IN_PROCESS",
    "created_at": "2023-05-29T20:39:24.802Z",
    "updated_at": "2023-05-29T20:39:24.802Z",
    "phase": "RECEPTION_DATE"
  }
}
```

RESPONSE - STATUS 422:
```
{
  "errors": [
    {
      "name": [
        "Nombre no puede estar vacío"
      ]
    }
  ]
}
```

## Delete Participant

In order to delete a participant, follow the next configuration:

METHOD: `DELETE`

URL: `http://127.0.0.1:3000/api/participants/:id`

HEADERS:
```
headers: {
  "Authorization": "ey2384...token"
}
```

RESPONSE - STATUS 200:
```
{
  "response": "Participant was successfully deleted"
}
```

## Candidates

In order to get the canditates, follow the next configuration:

METHOD: `GET`

URL: `http://127.0.0.1:3000/api/participants/candidates.json`

HEADERS:
```
headers: {
  "Authorization": "ey2384...token"
}
```

RESPONSE - STATUS 200:
```
{
  "participants": [
    {
      "name": "Jorge Lopez",
      "job_title": "Project Manager",
      "area": "TA",
      "source": "LinkedIn",
      "email": "jorge.lopez@gmail.com",
      "phone_number": "1234567890",
      "status": "IN_PROCESS",
      "phase": "RECEPTION_DATE"
    },
    {
      "name": "Maria Perez",
      "job_title": "CTO",
      "area": "TA",
      "source": "Indeed",
      "email": "maria.perez@gmail.com",
      "phone_number": "1234567890",
      "status": "DISCARDED",
      "phase": "FIRST_INTERVIEW"
    },
    {
      "name": "Ana Lopez",
      "job_title": "Software engineer",
      "area": "CD",
      "source": "Indeed",
      "email": "ana.lopez@gmail.com",
      "phone_number": "1234567890",
      "status": "PROPOSAL",
      "phase": "SECOND_INTERVIEW"
    }
  ]
}
```

## Hire History

In order to get the hire history, follow the next configuration:

METHOD: `GET`

URL: `http://127.0.0.1:3000/api/participants/hire_history.json`

HEADERS:
```
headers: {
  "Authorization": "ey2384...token"
}
```

RESPONSE - STATUS 200:
```
{
  "participants": [
    {
      "name": "Luis Mendez",
      "job_title": "Software engineer",
      "area": "TA",
      "source": "Facebook",
      "status": "HIRED"
    },
    {
      "name": "Roberto Martinez",
      "job_title": "Account manager",
      "area": "Marketing",
      "source": "LinkedIn",
      "status": "FIRED"
    }
  ]
}
```
