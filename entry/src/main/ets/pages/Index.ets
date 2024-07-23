import { Index_todoList } from './indexTabs/Index_todoList'
import { Index_chatList } from './indexTabs/Index_chatList'

@Entry
@Component
struct Index {
  private tabsController: TabsController = new TabsController()
  @State currentIndex: number = 0

  //自定义Tab组件
  @Builder
  TabWidget(title: string, targetIndex: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex === targetIndex ? selectedImg : normalImg).size({ width: 28, height: 28 })
      Text(title)
        .fontColor(this.currentIndex === targetIndex ? '#1698CE' : '#6B6B6B')
    }
    .onClick(() => {
      this.currentIndex = targetIndex
      this.tabsController.changeIndex(this.currentIndex)
    })
  }

  //构建页面
  build() {
    Tabs({ barPosition: BarPosition.End, controller: this.tabsController }) {
      TabContent() {
        Index_todoList()
      }
      .tabBar(this.TabWidget('待办', 0, $r("app.media.todilist_selected"), $r('app.media.todolist')))
      .backgroundColor('#f6f6f6')

      TabContent() {
        Index_chatList()
      }
      .tabBar(this.TabWidget('消息', 1, $r("app.media.message_selected"), $r('app.media.message')))
      .backgroundColor('#f6f6f6')
    }.width('100$').height('100%')
  }
}
