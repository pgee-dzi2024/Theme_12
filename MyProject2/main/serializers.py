from rest_framework import serializers
from .models import Stock, OperationTitle, OperationItem, Item


# Сериализатор  СКЛАДОВЕ
class StockSerializer(serializers.ModelSerializer):
    class Meta:
        model = Stock
        fields = "__all__"


# Сериализатор  НАЛИЧНОСТИ
class ItemSerializer(serializers.ModelSerializer):
    class Meta:
        model = Item
        fields = "__all__"
        depth = 1


# Сериализатор  Операции - детайли
class OperationItemSerializer(serializers.ModelSerializer):
    class Meta:
        model = OperationItem
        fields = "__all__"


# Сериализатор  Операции заглавия
class OperationTitleSerializer(serializers.ModelSerializer):
    op = OperationItemSerializer(many=True)

    class Meta:
        model = OperationTitle
        fields = "__all__"


