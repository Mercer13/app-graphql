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
![image](https://user-images.githubusercontent.com/39810144/185373314-4854da90-09e7-4a09-9eec-33669a08f008.png)
