@Component
struct TodoItem {
  isDone?: boolean
  title?:string
  content?: string
  type?: number

  build() {
    Text('你好')
  }
}