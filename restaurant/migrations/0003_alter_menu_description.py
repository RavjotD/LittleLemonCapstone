# Generated by Django 5.1.2 on 2024-11-06 03:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('restaurant', '0002_menu_description_menu_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='menu',
            name='Description',
            field=models.CharField(blank=True, default='No description available', max_length=255),
        ),
    ]