import { StartOptions } from '@kit.AbilityKit'

@Component
struct UserComponents {
  build() {
    Scroll() {
      Column() {
        /*
         * 用户信息
         */
        Column() {
          Row() {
            Image($rawfile('avatar.jpg'))
              .layoutWeight(1)
              .borderRadius(40)

            Column() {
              Text('田所浩二')
                .width('100%')
                .fontSize(24)
                .fontWeight(FontWeight.Bold)
                .margin({ bottom: 10 })
                .textAlign(TextAlign.Start)

              Text('逸一时，误一世')
                .width('100%')
                .fontSize(12)
                .textAlign(TextAlign.Start)

            }
            .layoutWeight(3)
            .padding(15)
          }
          .width('100%')
          .padding(15)
          .justifyContent(FlexAlign.Start)

          Row() {
            Column() {
              Text('19')
                .fontSize(24)
              Text('关注')
                .fontSize(16)
                .fontColor('#C0C0C0')
            }.layoutWeight(1)

            Column() {
              Text('19')
                .fontSize(24)
              Text('粉丝')
                .fontSize(16)
                .fontColor('#C0C0C0')
            }.layoutWeight(1)

            Column() {
              Text('8')
                .fontSize(24)
              Text('获赞')
                .fontSize(16)
                .fontColor('#C0C0C0')
            }.layoutWeight(1)

            Column() {
              Text('10')
                .fontSize(24)
              Text('历史浏览')
                .fontSize(16)
                .fontColor('#C0C0C0')
            }.layoutWeight(1)
          }
          .justifyContent(FlexAlign.SpaceBetween)

        }
        .justifyContent(FlexAlign.Start)

        /*
         * steam 信息
         */
        Column() {
          Row() {
            Text('野兽仙贝')
              .fontSize(24)
              .fontColor('#fff')
          }
          .margin({ bottom: 5 })
          .width('100%')

          Row() {
            Column() {
              Text('114')
                .fontSize(20)
                .fontColor('#fff')
                .fontWeight(FontWeight.Bold)
              Text('账号价值')
                .fontSize(12)
                .fontColor('#fff')
            }.margin({ right: 10 })

            Column() {
              Text('51')
                .fontSize(20)
                .fontColor('#fff')
                .fontWeight(FontWeight.Bold)
              Text('游戏时长')
                .fontSize(12)
                .fontColor('#fff')
            }.margin({ right: 10 })

            Column() {
              Text('4')
                .fontSize(20)
                .fontColor('#fff')
                .fontWeight(FontWeight.Bold)
              Text('游戏数量')
                .fontSize(12)
                .fontColor('#fff')
            }
            .margin({ right: 10 })
          }
          .width('100%')


        }
        .backgroundColor('#111f2c')
        .margin(10)
        .padding(10)
        .borderRadius(10)
        .shadow({
          radius: 10,
          color: Color.Gray,
          offsetX: 5,
          offsetY: 5
        })

      }
      .height('100%')

    }
    .height('100%')
    .scrollBar(BarState.Off) // 滚动条常驻显示
    .scrollBarColor(Color.Gray) // 滚动条颜色
    .edgeEffect(EdgeEffect.Spring) // 边缘效果设置为Spring

  }
}

export { UserComponents }