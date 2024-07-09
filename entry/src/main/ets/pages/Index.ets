import { tabsModel, TabsModel } from '../models/tabsModel'
import { IndexComponents } from '../components/IndexComponents'
import { CommunityComponents } from '../components/CommunityComponents'
import { GameLibComponents } from '../components/GameLibsComponents'
import { UserComponents } from '../components/UserComponents'

@Entry
@Component
struct Index {
  // 使用@State装饰器定义一个响应式状态变量，用于记录当前选中的Tab索引
  @State
  currentIndex: number = 0
  @State
  currentTitle: string = '首页'

  @Builder
  tabBuilder(item: TabsModel, index: number) {
    Column() {
      Image($rawfile(this.currentIndex == index ? item.activeIcon : item.icon)).width(24)
      Text(item.title)
        .fontSize(10)
        .padding(3)
        .fontColor(this.currentIndex === index ? '#000' : '#6B6B6B')
    }
    .width('100%')
    .height(60)
    .backgroundColor('#fff')
    .border({
      width: { top: '3px' },
      color: { top: '#DCDCDC' },
    })
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Flex({ direction: FlexDirection.Column }) {
      Row() {
        if (this.currentIndex == 0) {
          Text('HEYBOX')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
            .textAlign(TextAlign.Start)
            .margin(15)

          Image($rawfile('search.png'))
            .width('10%')
            .margin(15)
        } else if (this.currentIndex == 3) {

        } else {
          Text(this.currentTitle)
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
            .textAlign(TextAlign.Start)
            .margin(15)

          Image($rawfile('search.png'))
            .width('10%')
            .margin(15)
        }
      }
      .backgroundColor(0xFFFFFF).width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Tabs({
        barPosition: BarPosition.End,
        index: this.currentIndex,

      }) {
        ForEach(tabsModel, (item: TabsModel, index: number) => {
          TabContent() {
            if (index == 0) {
              IndexComponents()
            } else if (index == 1) {
              CommunityComponents()
            } else if (index == 2) {
              GameLibComponents()
            } else if (index == 3) {
              UserComponents()
            }
          }.tabBar(this.tabBuilder(item, index))
        })
      }
      .animationDuration(0)
      .backgroundColor('#FFF')
      .onChange((index: number) => {
        this.currentIndex = index
        this.currentTitle = tabsModel[index]['title']
      })
    }
    .backgroundColor(0xFFFFFF)
    .width('100%')
  }
}
