from django.db import models
class CourseProvider(models.Model):
 provider_id=models.AutoField(primary_key=True)
 provider_name=models.CharField(max_length=100,unique=True)
 description=models.CharField(max_length=255,null=True,blank=True)
 is_active=models.BooleanField(default=True)
 class Meta: db_table="course_provider"
 def __str__(self): return self.provider_name

class Course(models.Model):
 course_id=models.AutoField(primary_key=True)
 provider=models.ForeignKey(CourseProvider,db_column="provider_id",on_delete=models.PROTECT)
 course_name=models.CharField(max_length=150)
 course_code=models.CharField(max_length=50,unique=True,null=True,blank=True)
 description=models.CharField(max_length=255,null=True,blank=True)
 duration_months=models.IntegerField(null=True,blank=True)
 is_active=models.BooleanField(default=True)
 class Meta: db_table="course"
 def __str__(self): return self.course_name

class Intake(models.Model):
 intake_id=models.AutoField(primary_key=True)
 course=models.ForeignKey(Course,db_column="course_id",on_delete=models.PROTECT)
 intake_name=models.CharField(max_length=100)
 start_date=models.DateField()
 end_date=models.DateField(null=True,blank=True)
 status=models.CharField(max_length=10,default="OPEN")
 class Meta: db_table="intake"

class Student(models.Model):
 student_id=models.AutoField(primary_key=True)
 admission_number=models.CharField(max_length=50,unique=True)
 first_name=models.CharField(max_length=100)
 middle_name=models.CharField(max_length=100,null=True,blank=True)
 last_name=models.CharField(max_length=100)
 gender=models.CharField(max_length=10,null=True,blank=True)
 date_of_birth=models.DateField(null=True,blank=True)
 phone=models.CharField(max_length=20,null=True,blank=True)
 email=models.EmailField(max_length=150,null=True,blank=True)
 address=models.CharField(max_length=255,null=True,blank=True)
 admission_date=models.DateField()
 status=models.CharField(max_length=10,default="ACTIVE")
 class Meta: db_table="student"
 def __str__(self): return f"{self.admission_number} - {self.first_name} {self.last_name}"

class Enrollment(models.Model):
 enrollment_id=models.AutoField(primary_key=True)
 student=models.ForeignKey(Student,db_column="student_id",on_delete=models.PROTECT)
 intake=models.ForeignKey(Intake,db_column="intake_id",on_delete=models.PROTECT)
 enrollment_date=models.DateField()
 status=models.CharField(max_length=10,default="ACTIVE")
 class Meta:
  db_table="enrollment"
  constraints=[models.UniqueConstraint(fields=["student","intake"],name="uq_student_intake")]
