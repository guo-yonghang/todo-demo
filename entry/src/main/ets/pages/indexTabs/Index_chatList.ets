@Component
export struct Index_chatList {
  @State message: string = 'Index_chatList';

  //文本区域
  @Builder
  TextWidget() {
    Column() {
      Scroll() {
        Column() {
          Text('你好')
        }
      }
    }
  }

  build() {
    Stack({
      alignContent:Alignment.Top,
    }) {
      this.TextWidget()
    }
  }
}