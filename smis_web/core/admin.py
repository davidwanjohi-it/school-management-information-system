from django.contrib import admin
from .models import CourseProvider,Course,Intake,Student,Enrollment
admin.site.register([CourseProvider,Course,Intake,Student,Enrollment])
