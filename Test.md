
# Test the following features:

## Project Level URLS:

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include('restaurant.urls')),
    path('restaurant/booking/', include(router.urls)),
    # View booking at (restaurant/booking/tables/)
    path('auth/', include('djoser.urls')),
    path('auth/', include('djoser.urls.authtoken')),
    # User registration at ('auth/users/')
]

## App Level URLS:

urlpatterns = [
    path('', views.home, name='home'),
    path('about/', views.about, name='about'),
    path('book/', views.book, name='book'),
    path('reservations/', views.reservations, name='reservations'),
    path('menu/', views.menu, name='menu'),
    path('menu_item/<int:pk>/', views.display_menu_item, name='menu_item'),  
    path('bookings', views.bookings, name='bookings'), 
    # Class Based Views endpoint.
    path('api/menu/', MenuItemView.as_view(), name="/menu"),
    path('api/menu-items/<int:pk>', SingleItemView.as_view()),
    path('users/', UserViewSet.as_view({'get': 'list'})),
    path('api-reservations/', BookingView.as_view({'get': 'list'})),
    # User registration
    path('api-token-auth/', obtain_auth_token),
]

## Superuser:

- Username: admin
- Password: root@123
- Token: ada5529e39375f4542a24adfbc8c38778a77cfb7

## Users:

- Username: customer1
- Password: 123qweC1
- Token: 1c0930dc46fb5b503404cd5063065e10c660368e
