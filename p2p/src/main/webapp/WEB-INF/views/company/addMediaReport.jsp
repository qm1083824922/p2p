<%--
  Created by IntelliJ IDEA.
  User: 娃娃鱼
  Date: 2017/12/13
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>添加媒体报道</title>
    <link rel="stylesheet" href="<%=path %>/static/layui/css/layui.css" media="all"/>
</head>
<body>
<div class="layui-container">
    <div class="layui-row">
        <div class="layui-col-md12">
            <form id="addMediaReport" class="layui-form">
                <div class="layui-form-item" style="margin-top: 20px;">
                    <label class="layui-form-label">标题</label>
                    <div class="layui-input-block">
                        <input type="text" name="title"  lay-verify="required" autocomplete="off" placeholder="请输入标题"
                               class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">摘要</label>
                    <div class="layui-input-block">
                        <input type="text" name="summary"  lay-verify="required" autocomplete="off" placeholder="请输入摘要"
                               class="layui-input" id="editTest" maxlength="48">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-upload">
                        <label class="layui-label" style="float: left;display: block;padding: 9px 15px;width: 80px;
                                font-weight: 400;text-align: right;">
                            <button type="button" class="layui-btn" id="test0">封面图</button>
                        </label>
                        <div class="layui-upload-list">
                            <img class="layui-upload-img" id="pic" width="200" height="200">
                            <p id="demoText"></p>
                        </div>
                    </div>
                    <input type="hidden" name="pic" id="firstImg"/>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label"></label>
                    <div class="layui-input-block">
                        <textarea class="layui-textarea layui-hide" name="content"
                                  id="content"></textarea>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">地址</label>
                    <div class="layui-input-block">
                        <input type="text" name="url"  lay-verify="required" autocomplete="off" placeholder="请输入地址"
                               class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">时间</label>
                    <div class="layui-input-inline">
                        <input type="text" name="whatTime" id="test1" lay-verify="required" placeholder="yyyy-MM-dd HH:mm:ss" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item" style="margin-top: 20px;">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="fabu">立即提交</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript" src="<%=path %>/static/layui/layui.js"></script>
<script>
    layui.use(['form', 'laytpl', 'layedit', 'upload','laydate'], function () {

        var form = layui.form;
        var $ = layui.jquery;
        var layer = layui.layer;
        var laytpl = layui.laytpl;
        var layedit = layui.layedit;
        var upload = layui.upload;
        var laydate = layui.laydate;

        // 编辑器上传图片接口
        layedit.set({
            uploadImage: {
                url: '<%=path %>/file/upload' //接口url
                , type: 'post' //默认post
            }
        });
        //创建一个编辑器
        var editIndex = layedit.build('content', {
            tool: [
                'strong' //加粗
                , 'left' //左对齐
                , 'center' //居中对齐
                , 'link' //超链接
                , 'unlink' //清除链接
                , 'face' //表情
                , 'image' //插入图片
            ]
        });

        //上传封面图
        var uploadInst = upload.render({
            elem: '#test0'
            , url: '<%=path %>/file/firist'
            , before: function (obj) {
                //预读本地文件示例，不支持ie8
                obj.preview(function (index, file, result) {
                    $('#pic').attr('src', result); //图片链接（base64）
                });
            }
            , done: function (res) {
                //如果上传失败
                if (res > 0) {
                    return layer.msg('失败！');
                } else {
                    return $('#firstImg').val(res.msg);
                }
                //上传成功
            }
            , error: function () {
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function () {
                    uploadInst.upload();
                });
            }
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#test1' //指定元素
            ,type: 'datetime'
        });

        // 选择框
        form.on('select(typeId)', function (data) {
            console.log(data.value) //得到被选中的值
        });
        //提交媒体报道
        form.on('submit(fabu)', function (data) {
           $('#content').val(layedit.getContent(editIndex));
            $.post('<%=path %>/data/company/addMediaReport',
                $('#addMediaReport').serialize(),
                function (res) {
                    if (res.code === 0) {
                        layer.msg('提交成功', {
                            time: 1000 //2秒关闭（如果不配置，默认是3秒）
                        }, function () {
                            location.reload(true);
                        });
                    } else {
                        layer.msg(res.message);
                    }
                }, 'json'
            );
            return false;
        });

    });
</script>
</body>
</html>
