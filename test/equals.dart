
import 'package:yaho_test/modules/domain/models/base_data.dart';

bool equalsUsers(BaseData a, BaseData b) {
  return a.page == b.page &&
      a.total == b.total &&
      a.perPage == b.perPage &&
      a.totalPages == b.totalPages;
}
