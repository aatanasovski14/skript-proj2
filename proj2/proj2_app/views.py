from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required

# Create your views here.

def index(requset):
    if not requset.user.is_authenticated:
        return render(requset, 'index.html')
    else:
        return render(requset, 'hello.html')

def hello(requset):
    return render(requset, 'hello.html')
