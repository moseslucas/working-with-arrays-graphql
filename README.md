# api-rails-graphql

This is a boilerplate for backend using: **rails api** only & [graphql](graphql.org).

 - Ruby Version: `2.4.2`
 - Database: Postgresql

# Product Dependencies
```
 gem 'rails', '~> 5.1.4'
 gem 'pg', '~> 0.18'
 gem 'puma', '~> 3.7'
 gem 'graphql', '~> 1.7.7
 
 # in order to make graphiQL work, these two gems are required
 gem 'sass-rails'
 gem 'uglifier'
 
 # add graphiQL to development
 gem 'graphiql-rails', '~> 1.4.8'
```
### Installing
1. Clone this repository: `git clone git@github.com:moseslucas/api-rails-graphql.git`
If you're a non-git user [download this as zip file](https://github.com/moseslucas/api-rails-graphql/archive/master.zip)

2. Go to app directory and run: `bundle install && rails db:setup`
3. Start the server: `rails s`
4. Open browser and navigate to `localhost:3000/graphiql`

## Trying out graphiQL with sample model: Movie
1. At `localhost:3000/graphiql`: 
![localhost:3000/graphiql](https://user-images.githubusercontent.com/30344224/34460575-6f8489bc-ee4d-11e7-936d-ecb75081ac9a.png)

2. At the right side of graphiQL there's a Documentation Explorer for all our APIs.

	Check the query: `allMovies`. 

	Its type is`Movie` and have the following properties: 
	```
	id: ID,
	title: String,
	price: Float
	```
	![allMovies](https://user-images.githubusercontent.com/30344224/34460609-501fdd3c-ee4e-11e7-865c-f732da680288.gif)

3. Make a query call to fetch the `allMovies` API.

	*(In graphql there are **Mutations**(think of it as POST) & **Queries**(think of it as GET)*

	Make a query call:
	```
	query {
	 allMovies
	}
	```
	we could also set the properties we want to fetch:
	```
	query {
	 allMovies{
		id, title, price
	 }
	}
	```
	we could also rename the propery name like javascript objects
	```
	query {
	 allMovies{
		id,
		title,
		amount: price
	 }
	}
	```
	![query-allMovies](https://user-images.githubusercontent.com/30344224/34460676-57b7d1ce-ee50-11e7-8754-e14c2fc07ff0.gif)

4. Make a mutation call to post/create a record to the Movie model using the API `createMovie`

	*(In graphql there are **Mutations**(think of it as POST) & **Queries**(think of it as GET)*

	Make a mutation call:

	```
		mutation {
			createMovie(
				title: "Star Wars",
				price: 500
			)
		}
	```

	we could also set what properties to return after the record has been created:

	```
		mutation {
			createMovie(
				title: "Star Wars",
				price: 500
			) { 
				id,
				title,
				amount: price
			}
		}
	```
	![mutation-createMovie](https://user-images.githubusercontent.com/30344224/34461029-773f35d2-ee5a-11e7-9daa-5700d72bdc26.gif)




## Authors

* **Moses Lucas**

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
