# Generated by Django 5.0.6 on 2024-06-21 16:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('usermanagemet', '0002_test_department_alter_test_name'),
    ]

    operations = [
        migrations.AddField(
            model_name='test',
            name='salary',
            field=models.FloatField(blank=True, null=True),
        ),
    ]
