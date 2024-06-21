from django.db import models

# Create your models here.
class TEST(models.Model):
    name = models.CharField(max_length=10)
    age = models.IntegerField()
    department = models.CharField(max_length=50,null=True,blank=True)
    salary = models.FloatField(null=True,blank=True)