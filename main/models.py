from django.db import models

# Create your models here.
from django.db import models


class RelationList(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    personid = models.ForeignKey('SnslabList', models.DO_NOTHING, db_column='PersonID')  # Field name made lowercase.
    paperid = models.ForeignKey('ScholarList', models.DO_NOTHING, db_column='PaperID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'relation_list'


class ScholarList(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    year = models.IntegerField(db_column='Year', blank=True, null=True)  # Field name made lowercase.
    title = models.CharField(db_column='Title', unique=True, max_length=255)  # Field name made lowercase.
    author = models.CharField(db_column='Author', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'scholar_list'


class SnslabList(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'snslab_list'
