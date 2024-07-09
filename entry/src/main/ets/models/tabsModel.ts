export interface TabsModel {
  title: string
  icon: string
  activeIcon: string
}

export const tabsModel: TabsModel[] = [
  {
    title: '首页',
    icon: 'index-00.png',
    activeIcon: 'index-0.png'
  },
  {
    title: '社区',
    icon: 'index-01.png',
    activeIcon: 'index-1.png'
  },
  {
    title: '游戏库',
    icon: 'index-02.png',
    activeIcon: 'index-2.png'
  },
  {
    title: '我',
    icon: 'index-03.png',
    activeIcon: 'index-3.png'
  }
]