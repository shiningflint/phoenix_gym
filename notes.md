# Notes

## Environment variables
https://devato.com/post/handling-environment-variables-in-phoenix

## mix phx.gen.html
https://hexdocs.pm/phoenix/Mix.Tasks.Phx.Gen.Html.html

Generates controller, views, and context for an HTML resource.

`mix phx.gen.html Fruit Banana bananas name:string`
This will:
- Create a new context called "Fruit"
- Create a repo called "Banana"
- Views and templates will be created under the 'banana' namespace

`mix phx.gen.html Fruit Banana bananas name:string --web Fruit`
- Same as above BUT
- Views and templatess will be created under 'fruit/banana' namespace

So the pattern is:
`mix phx.gen.html [context] [schema singular] [schema plural]`
