from django.shortcuts import render, redirect
from django.contrib.auth import logout
from django.contrib.auth.views import LoginView
from django.urls import reverse_lazy

from .utils import *

from .forms import *

from django.contrib.auth.models import User


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


# приложение за клиенти
def DashboardView(request):
    if not request.user.is_authenticated:
        return redirect("login")
    else:
        context = {'user_id':request.user.id, }
        return render(request, 'main/index.html', context)


