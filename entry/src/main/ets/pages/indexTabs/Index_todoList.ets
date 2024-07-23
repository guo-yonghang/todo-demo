interface TodoType {
  title: string
  content?: string
  isDone: boolean
  type: number
}

@Component
export struct Index_todoList {
  // @State message: string = 'Index_todoList';
  @State todoTitle: string = ''
  // @State todoContnet:string = ''
  @State todoList: Array<TodoType> = [
    {
      title: "学习鸿蒙",
      content: '学习鸿蒙的基本语法',
      isDone: false,
      type: 1
    },{
    title: "学习鸿蒙",
    content: '学习鸿蒙的基本语法',
    isDone: false,
    type: 1
  },
  ]

  build() {
    Column() {
      Flex({ direction: FlexDirection.Column }) {
        //待办事项标题
        Text("待办事项")
          .width("100%")
          .fontSize(28)
          .fontWeight(FontWeight.Bold)
          .backgroundColor("#ffffff")
          .padding({ left: 15, top: 20, bottom: 20 })
        // //标题输入框
        // TextInput({text:this.todoTitle,placeholder:'请输入标题'}).width('100%')
        List({ space: 20 }) {

        }
      }
    }
  }
}