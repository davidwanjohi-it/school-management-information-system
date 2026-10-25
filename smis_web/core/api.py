from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated
from .models import CourseProvider,Course,Intake,Student,Enrollment
from .serializers import CourseProviderSerializer,CourseSerializer,IntakeSerializer,StudentSerializer,EnrollmentSerializer
class Base(viewsets.ModelViewSet):
 permission_classes=[IsAuthenticated]
class CourseProviderViewSet(Base):
 queryset=CourseProvider.objects.all(); serializer_class=CourseProviderSerializer
class CourseViewSet(Base):
 queryset=Course.objects.select_related("provider").all(); serializer_class=CourseSerializer
class IntakeViewSet(Base):
 queryset=Intake.objects.select_related("course").all(); serializer_class=IntakeSerializer
class StudentViewSet(Base):
 queryset=Student.objects.all(); serializer_class=StudentSerializer
class EnrollmentViewSet(Base):
 queryset=Enrollment.objects.select_related("student","intake").all(); serializer_class=EnrollmentSerializer
