from django.forms import ModelForm
from .models import Poruka


class PorukaForm(ModelForm):
    class Meta:
        model = Poruka
        fields = ['content']
