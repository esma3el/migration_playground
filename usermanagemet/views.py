from django.shortcuts import render,HttpResponse
from .models import TEST
# Create your views here.
def index(request):
    data = TEST.objects.all()
    context = {"data":data}
    return render(request,"index.html",context)