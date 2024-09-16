from django.urls import path
from . import views
from .views import MenuItemView, SingleItemView



urlpatterns = [
    
    path('menu/', MenuItemView.as_view()),
    path('menu/<int:pk>', SingleItemView.as_view())
    
]