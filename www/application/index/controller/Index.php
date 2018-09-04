<?php

namespace app\index\controller;


use app\model\Goods;

class Index extends Controller
{

    protected $noNeedLogin = '*';
    protected $noNeedRight = '*';
    protected $layout = '';

    public function _initialize()
    {
        parent::_initialize();
    }

    public function index()
    {
        if ($this->request->isPost()){
            $goods = new Goods();
            $item = $goods->limit(10)->select();
            $item = json($item);
            return $item;
        }
    }

    public function detail(){
        if($this->request->isPost()){
            $id = input('post.id');
            return Goods::where('id',$id)->find();
        }
    }

}
