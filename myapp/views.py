from django.shortcuts import render
from django.http import JsonResponse

# Views here
from myapp.models import Deploys, Tickets

def index(request):
	#dat = Deploys.objects.values()
	return render(request, 'myapp/index.html')

################################################################
# search by Change Record ######################################
################################################################
def recnum_search(request):
	if request.method == 'GET':
		key = request.GET['key']
		dat = list(Deploys.objects.filter(recordnum__startswith=key).values('recordnum', 'vertag', 'hostname', 'date', 'time', 'osuser', 'pdb', 'dir'))
		dat1 = list(Tickets.objects.filter(recordnum__startswith=key).values('recordnum', 'vertag', 'platform', 'date', 'time'))
		response_data = {}
		response_data['dat'] = dat 
		response_data['dat1'] = dat1 
		return JsonResponse(response_data)
		
################################################################
# search by Version Tag  #######################################
################################################################
def vertag_search(request):
	if request.method == 'GET':
		key = request.GET['key']
		dat = list(Deploys.objects.filter(vertag__startswith=key).values('recordnum', 'vertag', 'hostname', 'date', 'time', 'osuser' ,'pdb', 'dir'))
		dat1 = list(Tickets.objects.filter(vertag__startswith=key).values('recordnum', 'vertag', 'platform', 'date', 'time'))
		response_data = {}
		response_data['dat'] = dat 
		response_data['dat1'] = dat1 
		return JsonResponse(response_data)

################################################################
# search by Hostname  ##########################################
################################################################
def hostname_search(request):
	if request.method == 'GET':
		key = request.GET['key']
		dat = list(Deploys.objects.filter(hostname__startswith=key).values('recordnum', 'vertag', 'hostname', 'date', 'time', 'osuser' ,'pdb', 'dir'))
		dat1 = list(Tickets.objects.filter(platform__startswith=key).values('recordnum', 'vertag', 'platform', 'date', 'time'))
		response_data = {}
		response_data['dat'] = dat 
		response_data['dat1'] = dat1 
		return JsonResponse(response_data)