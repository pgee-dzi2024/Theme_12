from django.urls import path
from . import views

urlpatterns = [
    path('', views.SiteLoginView.as_view(), name='start'),
    path('login', views.SiteLoginView.as_view(), name='login'),
    path('dashboard', views.DashboardView, name='home'),

]
