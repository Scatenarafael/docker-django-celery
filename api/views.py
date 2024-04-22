from rest_framework.decorators import api_view
from rest_framework.response import Response

# Create your views here.


@api_view(["GET"])
def task1(request):
    return Response({"message": "Hello, worldd!"})
