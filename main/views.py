from urllib import request

from django.shortcuts import render




# 모델 불러오기 import
from .models import RelationList

def main_view(request):
    return render(request, 'main.html')

def scholar_professor_view(request,id):
    relation_list = RelationList.objects.filter(personid=id).select_related('paperid').all()
    return render(request, 'professor.html', {'relation_list': relation_list})

def scholar_bachelor_view(request,id):
    relation_list = RelationList.objects.filter(personid=id).select_related('paperid').all()
    return render(request, 'bachelor.html', {'relation_list': relation_list})

def scholar_master_view(request,id):
    relation_list = RelationList.objects.filter(personid=id).select_related('paperid').all()
    return render(request, 'master.html', {'relation_list': relation_list})

def scholar_graduate_view(request,id):
    relation_list = RelationList.objects.filter(personid=id).select_related('paperid').all()
    return render(request, 'graduate.html', {'relation_list': relation_list})