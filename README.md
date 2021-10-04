# cryptocurrency-backend

# Description 
 this is a web server acting as proxy server to help a front end application for fetching data about crypto currencies.

# Instructions
  make sure if you want to test the server locally you have [ruby,rails,node] installed on your machine or you can test hosted version with provided link below
# Endpoint 
 this server have only one end point to query information about a crypto currency:
  * locally:
    to try it locally => `localhost:3000/api/v1/coins?symbol={PUT YOUR CURRENCY}`
    example `localhost:3000/api/v1/coins?symbol=btc`
  * hosted: 
  `https://crbackendbtc.herokuapp.com/api/v1/coins?symbol={PUT YOUR CURRENCY}`
   example `https://crbackendbtc.herokuapp.com/api/v1/coins?symbol=btc`
  