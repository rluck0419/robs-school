# README
http://robs-school.herokuapp.com/

<h1>PokeCademy</h1>
The PokeCademy displays each school of the Pokemon Academy. You can also view the teachers from each school, and the students for each school as well. Each school teaches several courses as well, but registration has not opened yet for the students; the professors haven't even posted which class they're teaching! They'll get there soon...

<h2>Tables of the Database</h2>

The PokeCademy is very open about our research.

The database maintained by the Academy contains several tables: schools, teachers, courses, and students.

- Each School has a name, five (5) Courses, and five (5) Teachers
- Each Teacher has a name and six (6) Students
- Each Student has a name.

For each of these tables, all non-destructive CRUD actions can be performed via the proper URLs. For example, the schools table:

CREATING

	http://robs-school.herokuapp.com/schools/new

READING
<div>one</div>
	
	http://robs-school.herokuapp.com/schools/1
		
<div>all</div>
	
	http://robs-school.herokuapp.com/schools

UPDATING

	http://robs-school.herokuapp.com/schools/1/edit

DESTROYING

	# For security purposes, our data cannot be destroyed via URL
	# We apologize for the inconvenience.
	# We hope to see you again soon!

Each of these items can be edited or created, but the paths contained within the webpages (via HTML and CSS) will not currently lead to these forms.

<h3>Dependencies (see Gemfile)</h3>

1
. To run the PokeCademy Rails app on your computer, you'll need to make sure you've got Ruby installed. I've been using:
```ruby 2.3.0```

2
. You'll also want to use the lastest version of the Faker Gem. I've grabbed it directly from the master branch of the github repository.

```gem 'faker', github: "stympy/faker", branch: "master"```

3
. And you'll also need the Skeleton CSS framework for some front-end. I've got this in my code as such:

```
source 'https://rails-assets.org' do
  gem 'rails-assets-skeleton'
end
```
4
. For the rest of the dependencies, see the rest of the Gemfile.

<h2>I like shorts! They're comfy and easy to wear!</h2>