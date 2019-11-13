# Generated by Django 2.0.6 on 2019-11-13 21:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bazaarapp', '0010_tempdatatable'),
    ]

    operations = [
        migrations.CreateModel(
            name='SaledataTable',
            fields=[
                ('table_id', models.AutoField(primary_key=True, serialize=False)),
                ('email', models.CharField(max_length=255, null=True)),
                ('first_name', models.CharField(max_length=255, null=True)),
                ('last_name', models.CharField(max_length=255, null=True)),
                ('product_id', models.CharField(max_length=255, null=True)),
                ('product_name', models.CharField(max_length=255, null=True)),
                ('product_disc', models.CharField(max_length=255, null=True)),
                ('product_size', models.CharField(max_length=255, null=True)),
                ('product_image', models.CharField(max_length=255, null=True)),
                ('product_qty', models.CharField(max_length=255, null=True)),
                ('product_price', models.CharField(max_length=255, null=True)),
                ('total', models.CharField(max_length=255, null=True)),
                ('invoice', models.CharField(max_length=255, null=True)),
                ('country', models.CharField(max_length=255, null=True)),
                ('comapany_name', models.CharField(max_length=255, null=True)),
                ('street_address', models.CharField(max_length=255, null=True)),
                ('apartment_address', models.CharField(max_length=255, null=True)),
                ('state', models.CharField(max_length=255, null=True)),
                ('zip', models.CharField(max_length=255, null=True)),
                ('phone', models.CharField(max_length=255, null=True)),
                ('order_notes', models.CharField(max_length=255, null=True)),
            ],
        ),
    ]
