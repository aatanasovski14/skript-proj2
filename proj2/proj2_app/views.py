from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from .models import Poruka
from .forms import PorukaForm

# Create your views here.

def index(req):
    if not req.user.is_authenticated:
        return render(req, 'index.html')
    else:
        return redirect('proj2_app:hello')

@login_required
def hello(req):
    #return render(req, 'hello.html')
    return redirect('proj2_app:poruke')

@login_required
def poruke(req):
    tmp = Poruka.objects.all()
    if req.method == 'POST':
        form = PorukaForm(req.POST)

        if form.is_valid():
            a = Poruka(content=form.cleaned_data['content'], owner=req.user)
            a.save()
            tmp = Poruka.objects.all()
            form = PorukaForm()
            return render(req, 'hello.html', {'poruke': tmp,'form':form})
        else:
            return render(req, 'hello.html', {'poruke': tmp,'form':form})
    else:
        form = PorukaForm()
        return render(req, 'hello.html', {'poruke': tmp,'form': form})

@login_required
def delete(req, id):
    if not req.user.is_superuser and not isinstance(id,int):
        redirect('proj2_app:poruke')
    else:
        p = Poruka.objects.get(id=id)
        p.delete()
        return redirect('proj2_app:poruke')
