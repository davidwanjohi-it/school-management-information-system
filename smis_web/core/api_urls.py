from rest_framework.routers import DefaultRouter
from .api import CourseProviderViewSet,CourseViewSet,IntakeViewSet,StudentViewSet,EnrollmentViewSet
router=DefaultRouter()
router.register("providers",CourseProviderViewSet)
router.register("courses",CourseViewSet)
router.register("intakes",IntakeViewSet)
router.register("students",StudentViewSet)
router.register("enrollments",EnrollmentViewSet)
urlpatterns=router.urls
