import 'package:scoped_model/scoped_model.dart';

class AppModel extends Model {
  int pageNumber = 2;

  get getPageNumber => this.pageNumber;

  set setPageNumber(pageNumber) => this.pageNumber = pageNumber;
}
