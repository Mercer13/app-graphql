Heroku link:


https://app-graphql-github.herokuapp.com/

First you need to enter a query in the form.
Enter "github login" in quotes

Query:
```
{
  searchRepository(query: "Mercer13"){
    name
    repositoryList
  }
}
```
Output:
```
{
  "data": {
    "searchRepository": [
      {
        "name": "Bohdan Oleksiichuk",
        "repositoryList": "[\"app-graphql\", \"Computer-systems-architecture-and-system-programming\", \"Course-Work-Spotting\", \"Dijkstra-s-algorithm\", \"Frontend-Website-NaviExpo\", \"matrix-flows\", \"Online-System-Auction\", \"Online-System-Auction-Re2021\", \"Orleans-Hello-World\"]"
      }
    ]
  }
}
```
