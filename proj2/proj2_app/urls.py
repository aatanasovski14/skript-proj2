from django.urls import path
from . import views

app_name = 'proj2_app'
urlpatterns = [
    path('', views.index, name='index'),
    path('hello/',views.hello, name='hello'),
    path('new/',views.new, name='new'),
    path('poruke/',views.poruke, name='poruke')
]
