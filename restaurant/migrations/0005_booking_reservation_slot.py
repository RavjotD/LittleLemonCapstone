# Generated by Django 5.1.2 on 2024-11-07 03:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('restaurant', '0004_alter_menu_description_alter_menu_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='booking',
            name='reservation_slot',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]