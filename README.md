# README

link to heroku:

curl -X PUT -H "Content-Type: application/json" -d '{"valor": {"uf": "27565.79"}}' http://localhost:3000/valors/1.json

curl -X POST -H "Content-Type: application/json" -d '{"valor": {"uf": "27.565,79", "date": "2019-01-01"}}' http://localhost:3000/valors.json