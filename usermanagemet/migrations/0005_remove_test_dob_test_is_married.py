# Generated by Django 5.0.6 on 2024-06-22 17:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('usermanagemet', '0004_test_dob'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='test',
            name='dob',
        ),
        migrations.AddField(
            model_name='test',
            name='is_married',
            field=models.BooleanField(blank=True, null=True),
        ),
    ]
