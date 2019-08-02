from django.db import models
from django.contrib.auth.models import AbstractUser


# Create your models here.

class League(models.Model):
    id = models.IntegerField(unique=True, primary_key=True)
    name = models.CharField(max_length=200)

    def __str__(self):
        return self.name


class Team(models.Model):
    id = models.IntegerField(unique=True, primary_key=True)
    name = models.CharField(max_length=200)
    emblem = models.URLField(max_length=200)
    league = models.ForeignKey(League, on_delete=models.CASCADE)

    def __str__(self):
        return self.name


class Match(models.Model):
    home_team = models.ForeignKey(Team, on_delete=models.CASCADE, related_name="home")
    away_team = models.ForeignKey(Team, on_delete=models.CASCADE, related_name="away")
    home_score = models.PositiveIntegerField(null=True)
    away_score = models.PositiveIntegerField(null=True)
    date_match = models.DateField()
    time_match = models.TimeField()
    decision = models.SmallIntegerField(null=True)


class User(AbstractUser):
    solde = models.PositiveIntegerField(default=0)


class Pari(models.Model):
    date_pari = models.DateTimeField(auto_now_add=True)
    somme = models.PositiveIntegerField()
    decision = models.SmallIntegerField()
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name="user_pari")
