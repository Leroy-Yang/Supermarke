<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm" %>
<%@include file="/jsp/common/head.jsp"%>

<div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>供应商管理页面 >> 供应商添加页面</span>
        </div>
        <div class="providerAdd">
           <%-- <form id="providerForm" name="providerForm" method="post" action="${pageContext.request.contextPath }/jsp/addProvider.do">
			<!-- <input type="hidden" name="method" value="add"> -->
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="">
                    <label for="proCode">供应商编码：</label>
                    <input type="text" name="proCode" id="proCode" value=""> 
					<!-- 放置提示信息 -->
					<font color="red"></font>
                </div>
                <div>
                    <label for="proName">供应商名称：</label>
                   <input type="text" name="proName" id="proName" value=""> 
					<font color="red"></font>
                </div>
                <div>
                    <label for="proContact">联系人：</label>
                    <input type="text" name="proContact" id="proContact" value=""> 
					<font color="red"></font>

                </div>
                <div>
                    <label for="proPhone">联系电话：</label>
                    <input type="text" name="proPhone" id="proPhone" value=""> 
					<font color="red"></font>
                </div>
                <div>
                    <label for="proAddress">联系地址：</label>
                    <input type="text" name="proAddress" id="proAddress" value=""> 
                </div>
                <div>
                    <label for="proFax">传真：</label>
                    <input type="text" name="proFax" id="proFax" value=""> 
                </div>
                <div>
                    <label for="proDesc">描述：</label>
                    <input type="text" name="proDesc" id="proDesc" value=""> 
                </div>
                <div class="providerAddBtn">
                    <input type="button" name="add" id="add" value="保存">
					<input type="button" id="back" name="back" value="返回" >
                </div>
            </form> --%>
            <fm:form method="post" modelAttribute="provider" action="${pageContext.request.contextPath}/jsp/addAndUploadProvider.do" enctype="multipart/form-data">
            	<div >
                    <label >供应商编码：</label>
                    <fm:input path="proCode"/>
                    <fm:errors path="proCode" />
                </div>
                <div>
                    <label >供应商名称：</label>
                   <fm:input path="proName" />
                </div>
                <div>
                    <label >联系人：</label>
                    <fm:input path="proContact" />

                </div>
                <div>
                    <label>联系电话：</label>
                    <fm:input path="proPhone" />
                </div>
                <div>
                    <label>联系地址：</label>
                    <fm:input path="proAddress" />
                </div>
                <div>
                    <label >传真：</label>
                    <fm:input path="proFax" />
                </div>
                <div>
                    <label >描述：</label>
                   <fm:input path="proDesc" />
                </div>
                <div>
                    <label >组织机构代码证：</label>
                  	<input type="file" name="photos" id="photos"/>
  					<input type="file" name="photos" id="photos"/>
  					${errors }
                </div>
                <div class="providerAddBtn">
                    <input type="submit" name="add" id="add" value="保存">
					<input type="button" id="back" name="back" value="返回" >
                </div>
            </fm:form>
     </div>
</div>
</section>
<%@include file="/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/provideradd.js"></script>