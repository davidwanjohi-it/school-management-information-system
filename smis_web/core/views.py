from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from .models import Student,Course,Intake,Enrollment
@login_required
def dashboard(request):
 return render(request,"dashboard.html",{"students":Student.objects.count(),"courses":Course.objects.count(),"intakes":Intake.objects.count(),"enrollments":Enrollment.objects.count()})
