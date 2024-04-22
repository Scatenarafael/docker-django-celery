from django.urls import include, path
from rest_framework import routers

from api.views import task1

router = routers.DefaultRouter()


urlpatterns = [
    path("", include(router.urls)),
    path("task1/", task1),
]
