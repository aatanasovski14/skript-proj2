from django.db import models
from django.contrib.auth.models import User

# Create your models here.


class Poruka(models.Model):
    content = models.CharField(max_length=1024)
    created_at = models.DateTimeField(auto_now_add=True)
    owner = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.content
