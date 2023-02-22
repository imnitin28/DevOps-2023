# Done - Submitted for Techhub
# Prerequisite
```
Python3
Flask 
Postman 
```

# How to run 
```
python3 rate_limiter.py
```
![image](https://user-images.githubusercontent.com/76727343/216787747-f4518c87-9231-40e7-9db7-c4999fc50b64.png)

``` Copy the URL -> http://127.0.0.1:5000 ```

Go to Postman and Create new GET HTTP request with above URL, </br>
![image](https://user-images.githubusercontent.com/76727343/216787794-acd860f9-ae08-4159-8668-b18394c38ff8.png)

Now send 3 quick requests (within 5 sec difference between each request), on fourth request you will get message saying "Request blocked due to rate limiting." </br>
Again take a pause of 5 seconds and resend request, it should give a response. </br>

![image](https://user-images.githubusercontent.com/76727343/216787889-1941c5f2-4510-4542-8c14-ddb5c94cf10d.png)
</br>
![image](https://user-images.githubusercontent.com/76727343/216787908-3969fbed-e14a-4eb1-a174-751643f92cbd.png)
</br>
Idea is, within 5 seconds it can have at max 3 request, more than 3 would not be entertained. </br>


Python rate limiter is an utility program to prevent the frequency of an operation from exceeding some defined constraint. At an enterprise level application rate limiter is commonly used to protect underlying services and resources.


