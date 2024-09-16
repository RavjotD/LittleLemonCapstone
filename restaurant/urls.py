from django.urls import path
from . import views
from .views import MenuItemView, SingleItemView
from rest_framework.authtoken.views import obtain_auth_token


urlpatterns = [
    
    path('', views.home, name='home'),
    path('menu-items/', MenuItemView.as_view()),
    path('menu-items/<int:pk>', SingleItemView.as_view()),
    #user registration
    path('api-token-auth/', obtain_auth_token),
    
    
]