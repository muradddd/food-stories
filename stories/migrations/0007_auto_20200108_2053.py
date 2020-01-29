# Generated by Django 3.0.1 on 2020-01-08 20:53

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('stories', '0006_auto_20200108_1147'),
    ]

    operations = [
        migrations.RenameField(
            model_name='comment',
            old_name='context',
            new_name='text',
        ),
        migrations.RemoveField(
            model_name='comment',
            name='reply_to',
        ),
        migrations.AddField(
            model_name='comment',
            name='parent',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='children', to='stories.Comment', verbose_name='Reply'),
        ),
    ]
