import django_filters
from django.db.models import Q
from django_filters.rest_framework import FilterSet

from goods.models import Goods


class GoodsFilter(FilterSet):
    pricemax = django_filters.NumberFilter(field_name='shop_price', lookup_expr='lte')
    pricemin = django_filters.NumberFilter(field_name='shop_price', lookup_expr='gte')

    top_category = django_filters.NumberFilter(method='get_top_category')

    def get_top_category(self, queryset, name, value):
        result = queryset.filter(Q(category_id=value) |
                                 Q(category__parent_category_id=value) |
                                 Q(category__parent_category__parent_category_id=value))
        return result

    class Meta:
        model = Goods
        fields = ['is_new', 'pricemax', 'pricemin', 'top_category']
