import { articleModel, ArticleModel } from '../models/ArticleModel'
import { router } from '@kit.ArkUI'

@Component
export struct IndexComponents {
  build() {
    Scroll() {
      Column() {
        /*
         * 图片轮播
         */
        Swiper() {
          ForEach(articleModel.slice(1, 4), (item: ArticleModel) => {
            Image($rawfile(item.img))
              .width('100%')
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/Article',
                  params: {
                    id: item.id
                  }
                })
              })
          })
        }
        .autoPlay(true)
        .indicator( // 设置圆点导航点样式
          new DotIndicator()
            .itemWidth(8)
            .itemHeight(8)
            .selectedItemWidth(8)
            .selectedItemHeight(8)
            .color(Color.Gray)
            .selectedColor('#fff')
        )

        /*
         * 首页文章
         */
        Row() {
          Column() {
            ForEach(articleModel, (item: ArticleModel) => {
              Row() {
                Column() {
                  Text(item.title)
                    .width('100%')
                    .fontSize(16)
                    .fontWeight(FontWeight.Bold)
                    .maxLines(2)
                    .margin({ bottom: 10 })
                    .textAlign(TextAlign.Start)

                  Text(item.subtitle)
                    .width('100%')
                    .fontSize(12)
                    .fontColor('#6B6B6B')
                    .textAlign(TextAlign.Start)
                }
                .width('65%')
                .padding(5)

                Image($rawfile(item.img))
                  .width('35%')
                  .borderRadius(5)


              }
              .width('100%')
              .height('18%')
              .padding(5)
              .border({
                width: { bottom: '3px' },
                color: { bottom: '#DCDCDC' },
              })
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/Article',
                  params: {
                    id: item.id
                  }
                })
              })
            })
          }
        }
      }
      .width('100%')
    }
    .height('100%')
    .scrollBar(BarState.Off) // 滚动条常驻显示
    .scrollBarColor(Color.Gray) // 滚动条颜色
    .edgeEffect(EdgeEffect.Spring) // 边缘效果设置为Spring
  }
}
