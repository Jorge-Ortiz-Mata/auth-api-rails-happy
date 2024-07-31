# API - Recruitment Process.

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

- [Create Recruitment Process](#create-recruitment-process)
- [Update Recruitment Process](#update-recruitment-process)

## Create Recruitment Process

In order to create a participant, follow the next configuration:

METHOD: `POST`

URL: `http://127.0.0.1:3000/api/participants/:participant_id/recruitment_processes`

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
  "recruitment_process" : {
    "pc_comments": "People and Culture comments",
    "tech_comments": "Tech comments",
    "other_experience": "El candidato además tiene conocimiento de marketing",
    "salary_expectation": "22 brutos",
    "availability": "2 a 3 semanaes",
    "tier_level": "T1"
  }
}
```

RESPONSE - STATUS 200:
```
{
  "recruitment_process": {
    "id": 1,
    "pc_comments": "People and Culture comments",
    "tech_comments": "Tech comments",
    "other_experience": "El candidato además tiene conocimiento de marketing",
    "salary_expectation": "22 brutos",
    "availability": "2 a 3 semanaes",
    "tier_level": "T1",
    "participant_id": 6,
    "created_at": "2023-05-30T16:50:45.226Z",
    "updated_at": "2023-05-30T16:50:45.226Z"
  }
}
```

## Update Recruitment Process

In order to update a recruitment process, follow the next configuration:

METHOD: `PATCH`

URL: `http://127.0.0.1:3000/api/participants/:participant_id/recruitment_processes/:id`

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
    "recruitment_process" : {
    "pc_comments": "People and Culture comments Updated"
  }
}
```

RESPONSE - STATUS 200:
```
{
  "recruitment_process": {
    "participant_id": 6,
    "pc_comments": "People and Culture comments Updated",
    "tech_comments": "Tech comments",
    "other_experience": "El candidato además tiene conocimiento de marketing",
    "salary_expectation": "22 brutos",
    "availability": "2 a 3 semanaes",
    "tier_level": "T1",
    "id": 1,
    "created_at": "2023-05-30T16:50:45.226Z",
    "updated_at": "2023-05-30T21:27:09.592Z"
  }
}
```
