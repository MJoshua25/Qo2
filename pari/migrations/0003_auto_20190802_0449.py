# Generated by Django 2.2.1 on 2019-08-02 04:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pari', '0002_auto_20190802_0442'),
    ]

    operations = [
        migrations.AlterField(
            model_name='match',
            name='away_score',
            field=models.PositiveIntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='match',
            name='decision',
            field=models.SmallIntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='match',
            name='home_score',
            field=models.PositiveIntegerField(null=True),
        ),
    ]
