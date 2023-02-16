"""sholar_crawling URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path, include

from main import views

urlpatterns = [
    path('', views.main_view, name='main_view'),
    path('Scholar/professor/<int:id>', views.scholar_professor_view, name='scholar_professor_view'),
    path('Scholar/bachelor/<int:id>', views.cholar_bachelor_view, name='scholar_bachelor_view'),
    path('Scholar/master/<int:id>', views.cholar_master_view, name='scholar_master_view'),
    path('Scholar/graduate/<int:id>', views.cholar_graduate_view, name='scholar_graduate_view'),
]