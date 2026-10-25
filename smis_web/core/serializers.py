from rest_framework import serializers
from .models import CourseProvider,Course,Intake,Student,Enrollment
class CourseProviderSerializer(serializers.ModelSerializer):
 class Meta: model=CourseProvider; fields="__all__"
class CourseSerializer(serializers.ModelSerializer):
 class Meta: model=Course; fields="__all__"
class IntakeSerializer(serializers.ModelSerializer):
 class Meta: model=Intake; fields="__all__"
class StudentSerializer(serializers.ModelSerializer):
 class Meta: model=Student; fields="__all__"
class EnrollmentSerializer(serializers.ModelSerializer):
 class Meta: model=Enrollment; fields="__all__"
