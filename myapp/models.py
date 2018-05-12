from django.db import models

# Create your models here.
class Deploys(models.Model):
	recordnum = models.IntegerField(db_column='RecordNum', blank=True, null=True)
	vertag = models.CharField(db_column='VerTag', max_length=25, blank=True, null=True)
	hostname = models.CharField(db_column='HostName', max_length=25, blank=True, null=True)
	pdb = models.CharField(db_column='PDB', max_length=25, blank=True, null=True)
	dir = models.CharField(db_column='DIR', max_length=25, blank=True, null=True)
	osuser = models.CharField(db_column='OSUser', max_length=20, blank=True, null=True)
	date = models.DateField(db_column='Date', blank=True, null=True)
	time = models.TimeField(db_column='Time', blank=True, null=True)
	
	class Meta:
		managed = False
		db_table = 'deploys'
		
class Tickets(models.Model):
	recordnum = models.IntegerField(db_column='RecordNum', blank=True, null=True)
	vertag = models.CharField(db_column='VerTag', max_length=25, blank=True, null=True)
	platform = models.CharField(db_column='Platform', max_length=25, blank=True, null=True)
	date = models.DateField(db_column='Date', blank=True, null=True)
	time = models.TimeField(db_column='Time', blank=True, null=True)
	
	class Meta:
		managed = False
		db_table = 'tickets'
	