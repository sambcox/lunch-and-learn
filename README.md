# LUNCH AND LEARN

This project was built to satisfy the requirements of the final project for Module 3 of the Backend Program at the Turing School of Software and Design, Lunch and Learn.

----

## LEARNING GOALS

----

* Expose an API that aggregates data from multiple external APIs
* Expose an API that requires an authentication token
* Expose an API for CRUD functionality
* Determine completion criteria based on the needs of other developers
* Test both API consumption and exposure, making use of at least one mocking tool (VCR, Webmock, etc).

----

## SETUP INSTRUCTIONS

----

* Clone the project to your local machine:

```bash
git clone git@github.com:sambcox/lunch-and-learn.git
```

* Open the project and create the database:

```bash
rails db:create
```

* Migrate the database

```bash
rails db:migrate
```

----

## ENDPOINTS

----

### RECIPES

----

#### Get recipes given a specific country

```
GET /api/v1/recipes?country={country}
```

#### Get recipes for a random country

```
GET /api/v1/recipes
```

----

### LEARNING RESOURCES

----

#### Get learning resources for a specific country

```
GET /api/v1/learning_resources?country={country}
```

----

### USERS

----

#### Create a user

*Note:* pass ```name``` and ```email``` in request body

```
POST /api/v1/users
```

*Note:* API key will be returned in response body

----

### FAVORITES

----

#### Create a favorite for a user

*Note:* pass ```recipe_link```, ```api_key```, ```recipe_title```, and ```country``` in request body

```
POST /api/v1/favorites
```

### Get all favorites for a user

```
GET /api/v1/favorites?api_key={user API key}
```

----

## AUTHOR

:bust_in_silhouette: **Samuel Cox**
- samc1253@gmail.com
- [GitHub](https://github.com/sambcox)
- [LinkedIn](https://www.linkedin.com/in/samuel-bingham-cox/)