from django.test import TestCase
from .models import CourseProvider,Course,Student
class BasicTests(TestCase):
 def test_course_provider_relationship(self):
  p=CourseProvider.objects.create(provider_name="Test Provider")
  c=Course.objects.create(provider=p,course_name="Test Course")
  self.assertEqual(c.provider.provider_name,"Test Provider")
 def test_student_string(self):
  s=Student.objects.create(admission_number="TEST001",first_name="Test",last_name="Student",admission_date="2027-01-01")
  self.assertIn("TEST001",str(s))
