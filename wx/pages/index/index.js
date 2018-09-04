//index.js
Page({
    data: {
      imgUrls:[
        "../../images/index/top1.jpg",
        "../../images/index/top2.jpg",
        "../../images/index/top3.jpg"
      ],
      goods:[],
      detailId:0
    },
  /**
* 生命周期函数--监听页面加载
*/
  onLoad: function (options) {
    var that = this;
    wx.request({
      url: 'http://www.xshop.com', //仅为示例，并非真实的接口地址
      data: {},
      method: "POST",
      header: {
        'content-type': 'application/json' // 默认值
      },
      success: function (res) {
        that.setData({
          goods: res.data
        })
      }
    })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  },
  detile: function(id){
    // console.log(id.currentTarget.dataset.id);
    const app = getApp();
    app.globalData.goodsId = id.currentTarget.dataset.id;
    wx.navigateTo({
      url: '../detail/detail',
    })
  }
})
