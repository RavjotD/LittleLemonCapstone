from django.urls import path
from . import views
from .views import MenuItemView, SingleItemView
from rest_framework.authtoken.views import obtain_auth_token


urlpatterns = [
    
    path('', views.home, name='home'),
    path('menu/', MenuItemView.as_view()),
    path('menu/<int:pk>', SingleItemView.as_view()),
    path('api-token-auth/', obtain_auth_token),
    
    
]