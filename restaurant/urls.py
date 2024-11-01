from django.urls import path
from . import views
from .views import MenuItemView, SingleItemView, UserViewSet
from rest_framework.authtoken.views import obtain_auth_token


urlpatterns = [
    path('', views.home, name="home"),
    path('about/', views.about, name="about"),
    path('book/', views.book, name="book"),
    path('reservations/', views.reservations, name="reservations"),
    path('menu/', views.menu, name="menu"),
    path('menu_item/<int:pk>/', views.display_menu_item, name="menu_item"),  
    path('bookings', views.bookings, name='bookings'), 
    path('menu-items/<int:pk>', SingleItemView.as_view()),
    path('users/', UserViewSet.as_view({'get':'list'})),
    #user registration
    path('api-token-auth/', obtain_auth_token),
    
    
]