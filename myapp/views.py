from django.shortcuts import render
from django.http import JsonResponse

# Create your views here.

from myapp.models import Deploys, Tickets

def index(request):
	#dat = Deploys.objects.values()
	return render(request, 'myapp/index.html')
	
def recnum_search(request):
	if request.method == 'GET':
		key = request.GET['key']
		dat = list(Deploys.objects.filter(recordnum=key).values('hostname', 'date', 'time', 'osuser'))
		dat1 = list(Tickets.objects.filter(recordnum=key).values('platform', 'date', 'time'))
		response_data = {}
		response_data['dat'] = dat 
		response_data['dat1'] = dat1 
		return JsonResponse(response_data)
		
def vertag_search(request):
	if request.method == 'GET':
		key = request.GET['key']
		dat = list(Deploys.objects.filter(vertag=key).values('hostname', 'date', 'time', 'osuser'))
		dat1 = list(Tickets.objects.filter(vertag=key).values('platform', 'date', 'time'))
		response_data = {}
		response_data['dat'] = dat 
		response_data['dat1'] = dat1 
		return JsonResponse(response_data)