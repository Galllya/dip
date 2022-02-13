class DateCustom {
  String getMount(int number) {
    String mount = '';
    switch (number) {
      case 1:
        mount = 'январе';
        break;
      case 2:
        mount = 'феврале';
        break;

      case 3:
        mount = 'марте';
        break;
      case 4:
        mount = 'апреле';
        break;
      case 5:
        mount = 'мае';
        break;
      case 6:
        mount = 'июне';
        break;
      case 7:
        mount = 'июле';
        break;
      case 8:
        mount = 'августе';
        break;
      case 9:
        mount = 'сентябре';
        break;
      case 10:
        mount = 'октябре';
        break;
      case 11:
        mount = 'ноябре';
        break;
      case 12:
        mount = 'декабре';
        break;
    }
    return mount;
  }
}
