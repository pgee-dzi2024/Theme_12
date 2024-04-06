from django.shortcuts import render, redirect
from django.contrib.auth import logout
from django.contrib.auth.views import LoginView
from django.urls import reverse_lazy

from .utils import *

from .forms import *

from .models import *

from .serializers import *

from rest_framework.views import APIView
from rest_framework.response import Response


# Начален екран
class SiteLoginView(DataMixin, LoginView):
    form_class = LoginUserForm
    template_name = 'main/login.html'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        c_def = self.get_user_context(title="ВХОД")
        return dict(list(context.items())+list(c_def.items()))

    def get_success_url(self):
        user = self.request.user
        if user.is_active:
            reverse_lazy_addr = 'home'
        else:
            reverse_lazy_addr = 'login'
        print(reverse_lazy_addr)
        return reverse_lazy(reverse_lazy_addr)


# logout - връщане към началния екран
def logout_user(request):
    logout(request)
    return redirect('login')


# начална страница
def dashboard_view(request):
    if not request.user.is_authenticated:
        return redirect("login")
    else:
        context = {'user': request.user,
                   'page_title': 'Контролен панел',
                   'breadcrumb': [
                       {'ttl': 'Начало', 'link': 'home'},
                       {'ttl': 'Контролен панел', 'link': 'home'},
                       ],
                   }
        return render(request, 'main/index.html', context)


# складова наличност
def stock_view(request):
    if not request.user.is_authenticated:
        return redirect("login")
    else:
        context = {'user': request.user,
                   'page_title': 'Складова наличност',
                   'breadcrumb': [
                       {'ttl': 'Начало', 'link': 'home'},
                       {'ttl': 'Складова наличност', 'link': 'stock'},
                       {'ttl': 'Наличност', 'link': 'stock'},
                       ],
                   }
        return render(request, 'main/stock.html', context)


# доставка
def stock_in_view(request):
    if not request.user.is_authenticated:
        return redirect("login")
    else:
        context = {'user': request.user,
                   'page_title': 'Нова доставка',
                   'breadcrumb': [
                       {'ttl': 'Начало', 'link': 'home'},
                       {'ttl': 'Складова наличност', 'link': 'stock'},
                       {'ttl': 'Доставка', 'link': 'stock_in'},
                       ],
                   }
        return render(request, 'main/stock_in.html', context)


# Изписване
def stock_out_view(request):
    if not request.user.is_authenticated:
        return redirect("login")
    else:
        context = {'user': request.user,
                   'page_title': 'Изписване на стоки',
                   'breadcrumb': [
                       {'ttl': 'Начало', 'link': 'home'},
                       {'ttl': 'Складова наличност', 'link': 'stock'},
                       {'ttl': 'Изписване', 'link': 'stock_out'},
                       ],
                   }
        return render(request, 'main/stock_out.html', context)


# R E S T   У С Л У Г И
# Връща списък на складовете
class StockListSerializerView(APIView):
    def get(self, request):
        queryset = Stock.objects.order_by('id')
        serializer = StockSerializer(queryset, many=True, context={"request": request})
        return Response(serializer.data)


# Връща списък на артикулите
class ItemListSerializerView(APIView):
    def get(self, request):
        queryset = Item.objects.order_by('id')
        serializer = ItemSerializer(queryset, many=True, context={"request": request})
        return Response(serializer.data)


# Връща списък операции
class OperationListSerializerView(APIView):
    def get(self, request):
        queryset = OperationTitle.objects.order_by('id')
        serializer = OperationTitleSerializer(queryset, many=True, context={"request": request})
        return Response(serializer.data)
