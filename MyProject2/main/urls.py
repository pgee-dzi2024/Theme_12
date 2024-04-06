from django.urls import path
from . import views

urlpatterns = [
    path('', views.SiteLoginView.as_view(), name='login'),
    path('login', views.SiteLoginView.as_view(), name='login'),
    path('dashboard', views.dashboard_view, name='home'),
    path('logout', views.logout_user, name='logout'),
    path('stock', views.stock_view, name='stock'),
    path('stock_in', views.stock_in_view, name='stock_in'),
    path('stock_out', views.stock_out_view, name='stock_out'),

    path('api/stocks/', views.StockListSerializerView.as_view()),
    path('api/items/', views.ItemListSerializerView.as_view()),
    path('api/operations/', views.OperationListSerializerView.as_view()),
]
