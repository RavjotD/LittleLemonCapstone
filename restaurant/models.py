from django.db import models

# Create your models here.
class Menu(models.Model):
    Title = models.CharField(max_length=255)
    Price = models.DecimalField(max_digits=6, decimal_places=2)
    Description = models.CharField(max_length=255, blank=True, null=True, default='No description available')
    Inventory = models.IntegerField()
    Image = models.CharField(max_length=255, blank=True, null=True, default='default_image.jpg')
    
    def get_item(self):
        return f'{self.Title} : {str(self.Price)}'


class Booking(models.Model):
    Name = models.CharField(max_length=255)
    No_of_guest = models.IntegerField()
    BookingDate = models.DateTimeField()
    reservation_slot = models.IntegerField(null=True, blank=True)

