from django.urls import path
from . import views

app_name = 'match'

urlpatterns = [
    path('', views.listing, name="listing"),
]
