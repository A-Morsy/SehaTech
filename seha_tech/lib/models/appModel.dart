import 'package:scoped_model/scoped_model.dart';

class AppModel extends Model {
  int currentPage = 2, previousPage = 0;
  get getPreviousPage => this.previousPage;

  set setPreviousPage(previousPage) => this.previousPage = previousPage;

  get getPageNumber => this.currentPage;

  set setPageNumber(pageNumber) => this.currentPage = pageNumber;
}
