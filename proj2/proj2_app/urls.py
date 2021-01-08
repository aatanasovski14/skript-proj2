from django.urls import path
from . import views

app_name = 'proj2_app'
urlpatterns = [
    path('', views.index, name='index'),
    path('hello/',views.hello, name='hello'),
    path('poruke/',views.poruke, name='poruke'),
    path('delete/<int:id>/',views.delete, name='delete'),
]
