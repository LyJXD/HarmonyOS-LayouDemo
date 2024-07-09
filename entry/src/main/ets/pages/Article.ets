import { ParamsModel } from '../models/paramsModel'
import { ArticleModel, articleModel } from '../models/ArticleModel'
import { router } from '@kit.ArkUI'

@Entry
@Component
struct Article {
  @State
  r: ArticleModel = {} as ArticleModel

  build() {
    Column() {
      /*
       * 导航区
       */
      Stack({ alignContent: Alignment.TopStart }) {
        Column() {
          Image($rawfile('back.png')).width(28)
        }
        .width(44)
        .height('100%')
        .justifyContent(FlexAlign.Center)
        .zIndex(1)
        .onClick(() => {
          router.back()
        })

        Text('正文')
          .textAlign(TextAlign.Center)
          .height('100%')
          .width('100%')
          .fontSize(18)
          .fontColor('#000')
      }
      .height(50)
      .backgroundColor('#fff')
      .width('100%')

      /*
       * 内容区
       */
      Image($rawfile(this.r.img))
        .width('100%')

      Text(this.r.title)
        .fontSize(24)
        .fontWeight(600)
        .fontColor('#000')
        .margin({ top: 15, left: 10, right: 10 })

      Row() {
        Text(this.r.author)
          .fontSize(18)
          .fontWeight(400)
          .fontColor('#000')

        Button() {
          Text('关注')
            .fontColor('#fff')
        }
        .width(45)
        .height(30)
        .type(ButtonType.Normal)
        .borderRadius(3)
        .backgroundColor('#000')
      }
      .width('100%')
      .padding(15)
      .justifyContent(FlexAlign.SpaceBetween)

      Text(`${this.r.subtitle}`)
        .width('100%')
        .fontColor('#999')
        .margin({ bottom: 5 })
        .padding({ left: 15 })
        .textAlign(TextAlign.Start)

      Text(this.r.content)
        .fontSize(18)
        .fontColor('#000')
        .fontWeight(300)
        .margin(15)

    }
  }

  // 在页面渲染前，能不能先执行一段逻辑
  // 实现方法就是生命周期函数：aboutToAppear
  aboutToAppear(): void {
    const params: ParamsModel = router.getParams() as ParamsModel
    const result = articleModel.find((item: ArticleModel) => item.id == params.id)
    this.r = result as ArticleModel
  }
}