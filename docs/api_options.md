# API - Options.

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

- [Categories](#categories)
- [Create Option](#create-option)
- [Update Option](#update-option)
- [Delete Option](#delete-option)
- [Area Options](#area-options)
- [Classification Options](#classification-options)
- [Immediate Managers Options](#immediate-managers-options)
- [Job Title Options](#job-title-options)
- [Participant Status Options](#participant-status-options)
- [Reason For Leaving Options](#reason-for-leaving-options)
- [Recruitment Phase Options](#recruitment-phase-options)
- [Skill Options](#skill-options)
- [Source Options](#source-options)

## Categories.

Each option created belongs to a category. They have an attribute called **category** and accepts a string as a value.

The available categories are:

  - AREA
  - CLASSIFICATION
  - IMMEDIATE_MANAGERS
  - JOB_TITLE
  - PARTICIPANT_STATUS
  - REASON_FOR_LEAVING
  - RECRUITMENT_PHASE
  - SKILL
  - SOURCE

## Create Option.

In order to create an option, follow the next configuration:

METHOD: `POST`

URL: `http://127.0.0.1:3000/api/options/`

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
  "option": {
    "title": "Option title",
    "description": "Option category",
    "category": "AREA"
  }
}
```

RESPONSE - STATUS 200:
```
{
  "option": {
    "id": 1,
    "title": "Option title",
    "description": "Option category",
    "category": "AREA",
    "created_at": "2023-05-26T18:35:10.012Z",
    "updated_at": "2023-05-26T18:35:10.012Z"
  }
}
```

RESPONSE - STATUS 422:
```
{
  "errors": [
    {
      "title": [
          "can't be blank"
      ],
      "category": [
          "can't be blank"
      ]
    }
  ]
}
```

## Update option.

In order to update an option, follow the next configuration:

METHOD: `PATCH`

URL: `http://127.0.0.1:3000/api/options/:id`

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
  "option": {
    "title": "Option title Updated",
    "description": "Option category",
    "category": "AREA"
  }
}
```

RESPONSE - STATUS 200:
```
{
  "option": {
    "id": 1,
    "title": "Option title Updated",
    "description": "Option category",
    "category": "AREA",
    "created_at": "2023-05-26T18:35:10.012Z",
    "updated_at": "2023-05-26T18:40:41.302Z"
  }
}
```

RESPONSE - STATUS 422:
```
{
  "errors": [
    {
      "title": [
          "can't be blank"
      ],
      "category": [
          "can't be blank"
      ]
    }
  ]
}
```

## Delete option.

In order to update an option, follow the next configuration:

METHOD: `DELETE`

URL: `http://127.0.0.1:3000/api/options/:id`

HEADERS:
```
headers: {
  "Authorization": "ey2384...token"
}
```

RESPONSE - STATUS 200:
```
{
  "response": "Option was successfully deleted"
}
```

## Area options.

In order to get the area options, follow the next configuration:

METHOD: `GET`

URL: `http://127.0.0.1:3000/api/options/area.json`

HEADERS:
```
headers: {
  "Authorization": "ey2384...token"
}
```

RESPONSE - STATUS 200:
```
{
  "options": [
    {
      "id": "1",
      "title": "AREA Option",
      "description": "AREA Option Description",
      category: "AREA"
    },
    {
      "id": "2",
      "title": "AREA Option",
      "description": "AREA Option Description",
      category: "AREA"
    }
  ]
}
```

## Classification options.

In order to get the classification options, follow the next configuration:

METHOD: `GET`

URL: `http://127.0.0.1:3000/api/options/classification.json`

HEADERS:
```
headers: {
  "Authorization": "ey2384...token"
}
```

RESPONSE - STATUS 200:
```
{
  "options": [
    {
      "id": "1",
      "title": "CLASSIFICATION Option",
      "category": "CLASSIFICATION"
    },
    {
      "id": "2",
      "title": "CLASSIFICATION Option",
      "category": "CLASSIFICATION"
    },
  ]
}
```

## Immediate Managers options.

In order to get the immediate managers options, follow the next configuration:

METHOD: `GET`

URL: `http://127.0.0.1:3000/api/options/immediate_managers.json`

HEADERS:
```
headers: {
  "Authorization": "ey2384...token"
}
```

RESPONSE - STATUS 200:
```
{
  "options": [
    {
      "id": "1",
      "title": "IMMEDIATE_MANAGERS Option",
      "category": "IMMEDIATE_MANAGERS"
    },
    {
      "id": "2",
      "title": "IMMEDIATE_MANAGERS Option",
      "category": "IMMEDIATE_MANAGERS"
    },
  ]
}
```

## Job Title options.

In order to get the job title options, follow the next configuration:

METHOD: `GET`

URL: `http://127.0.0.1:3000/api/options/job_title.json`

HEADERS:
```
headers: {
  "Authorization": "ey2384...token"
}
```

RESPONSE - STATUS 200:
```
{
  "options": [
    {
      "id": "1",
      "title": "JOB_TITLE Option",
      "category": "JOB_TITLE"
    },
    {
      "id": "2",
      "title": "JOB_TITLE Option",
      "category": "JOB_TITLE"
    }
  ]
}
```

## Participant Status options.

In order to get the participant status options, follow the next configuration:

METHOD: `GET`

URL: `http://127.0.0.1:3000/api/options/participant_status.json`

HEADERS:
```
headers: {
  "Authorization": "ey2384...token"
}
```

RESPONSE - STATUS 200:
```
{
  "options": [
    {
      "id": "1",
      "title": "PARTICIPANT_STATUS Option",
      "description": "PARTICIPANT_STATUS Option Description",
      "category": "PARTICIPANT_STATUS"
    },
    {
      "id": "2",
      "title": "PARTICIPANT_STATUS Option",
      "description": "PARTICIPANT_STATUS Option Description",
      "category": "PARTICIPANT_STATUS"
    }
  ]
}
```

## Reason For leaving options.

In order to get the reason for leaving options, follow the next configuration:

METHOD: `GET`

URL: `http://127.0.0.1:3000/api/options/reason_for_leaving.json`

HEADERS:
```
headers: {
  "Authorization": "ey2384...token"
}
```

RESPONSE - STATUS 200:
```
{
  "options": [
    {
      "id": "1",
      "title": "REASON_FOR_LEAVING Option",
      "description": "REASON_FOR_LEAVING Option Description",
      "category": "REASON_FOR_LEAVING"
    },
    {
      "id": "2",
      "title": "REASON_FOR_LEAVING Option",
      "description": "REASON_FOR_LEAVING Option Description",
      "category": "REASON_FOR_LEAVING"
    }
  ]
}
```

## Recruitment Phase options.

In order to get the recruitment phase options, follow the next configuration:

METHOD: `GET`

URL: `http://127.0.0.1:3000/api/options/recruitment_phase.json`

HEADERS:
```
headers: {
  "Authorization": "ey2384...token"
}
```

RESPONSE - STATUS 200:
```
{
  "options": [
    {
      "id": "1",
      "title": "RECRUITMENT_PHASE Option",
      "category": "RECRUITMENT_PHASE"
    },
    {
      "id": "2",
      "title": "RECRUITMENT_PHASE Option",
      "category": "RECRUITMENT_PHASE"
    }
  ]
}
```

## Skill options.

In order to get the skills options, follow the next configuration:

METHOD: `GET`

URL: `http://127.0.0.1:3000/api/options/skills.json`

HEADERS:
```
headers: {
  "Authorization": "ey2384...token"
}
```

RESPONSE - STATUS 200:
```
{
  "options": [
    {
      "id": "1",
      "title": "SKILL Option",
      "category": "SKILL"
    },
    {
      "id": "2",
      "title": "SKILL Option",
      "category": "SKILL"
    }
  ]
}
```

## Source options.

In order to get the source options, follow the next configuration:

METHOD: `GET`

URL: `http://127.0.0.1:3000/api/options/source.json`

HEADERS:
```
headers: {
  "Authorization": "ey2384...token"
}
```

RESPONSE - STATUS 200:
```
{
  "options": [
    {
      "id": "1",
      "title": "SOURCE Option",
      "category": "SOURCE"
    },
    {
      "id": "2",
      "title": "SOURCE Option",
      "category": "SOURCE"
    }
  ]
}
```
