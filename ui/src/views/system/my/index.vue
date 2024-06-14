<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
<!--      <el-form-item label="预订人姓名" prop="bookUserName">-->
<!--        <el-input-->
<!--          v-model="queryParams.bookUserName"-->
<!--          placeholder="请输入预订人姓名"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
<!--      <el-form-item label="预订人ID" prop="bookUserId">-->
<!--        <el-input-->
<!--          v-model="queryParams.bookUserId"-->
<!--          placeholder="请输入预订人ID"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
<!--      <el-form-item label="预订实验室" prop="bookPlace">-->
<!--        <el-input-->
<!--          v-model="queryParams.bookPlace"-->
<!--          placeholder="请输入预订实验室"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
      <el-form-item label="预订状态" prop="bookState">
        <el-select v-model="queryParams.bookState" placeholder="请选择">
        <el-option
          v-for="item in options"
          :key="item.value"
          :label="item.label"
          :value="item.value"
          clearable
          @keyup.enter.native="handleQuery"
        />
        </el-select>
      </el-form-item>
<!--      <el-form-item label="预订时间" prop="bookTimeStart">-->
<!--        <el-date-picker clearable-->
<!--          v-model="queryParams.bookTimeStart"-->
<!--          type="date"-->
<!--          value-format="yyyy-MM-dd"-->
<!--          placeholder="请选择预订时间">-->
<!--        </el-date-picker>-->
<!--      </el-form-item>-->
<!--      <el-form-item label="${comment}" prop="bookTimeEnd">-->
<!--        <el-date-picker clearable-->
<!--          v-model="queryParams.bookTimeEnd"-->
<!--          type="date"-->
<!--          value-format="yyyy-MM-dd"-->
<!--          placeholder="请选择${comment}">-->
<!--        </el-date-picker>-->
<!--      </el-form-item>-->
<!--      <el-form-item label="申请信息" prop="applyInfo">-->
<!--        <el-input-->
<!--          v-model="queryParams.applyInfo"-->
<!--          placeholder="请输入申请信息"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
<!--      <el-form-item label="注意事项" prop="noteInfo">-->
<!--        <el-input-->
<!--          v-model="queryParams.noteInfo"-->
<!--          placeholder="请输入注意事项"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

<!--    <el-row :gutter="10" class="mb8">-->
<!--      <el-col :span="1.5">-->
<!--        <el-button-->
<!--          type="primary"-->
<!--          plain-->
<!--          icon="el-icon-plus"-->
<!--          size="mini"-->
<!--          @click="handleAdd"-->
<!--          v-hasPermi="['system:book:add']"-->
<!--        >新增</el-button>-->
<!--      </el-col>-->
<!--      <el-col :span="1.5">-->
<!--        <el-button-->
<!--          type="success"-->
<!--          plain-->
<!--          icon="el-icon-edit"-->
<!--          size="mini"-->
<!--          :disabled="single"-->
<!--          @click="handleUpdate"-->
<!--          v-hasPermi="['system:book:edit']"-->
<!--        >修改</el-button>-->
<!--      </el-col>-->
<!--      <el-col :span="1.5">-->
<!--        <el-button-->
<!--          type="danger"-->
<!--          plain-->
<!--          icon="el-icon-delete"-->
<!--          size="mini"-->
<!--          :disabled="multiple"-->
<!--          @click="handleDelete"-->
<!--          v-hasPermi="['system:book:remove']"-->
<!--        >删除</el-button>-->
<!--      </el-col>-->
<!--      <el-col :span="1.5">-->
<!--        <el-button-->
<!--          type="warning"-->
<!--          plain-->
<!--          icon="el-icon-download"-->
<!--          size="mini"-->
<!--          @click="handleExport"-->
<!--          v-hasPermi="['system:book:export']"-->
<!--        >导出</el-button>-->
<!--      </el-col>-->
<!--      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>-->
<!--    </el-row>-->

    <el-table v-loading="loading" :data="bookList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="id" />
<!--      <el-table-column label="预订人姓名" align="center" prop="bookUserName" />-->
<!--      <el-table-column label="预订人ID" align="center" prop="bookUserId" />-->
      <el-table-column label="预订实验室" align="center" prop="bookPlace" />
      <el-table-column label="预订状态" align="center" prop="bookState" />
      <el-table-column label="预订开始时间" align="center" prop="bookTimeStart" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.bookTimeStart, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="预订结束时间" align="center" prop="bookTimeEnd" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.bookTimeEnd, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="申请信息" align="center" prop="applyInfo" />
<!--      <el-table-column label="注意事项" align="center" prop="noteInfo" />-->
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            type="primary"
            @click="handleUpdate(scope.row)"
          >查看详情</el-button>
<!--          <el-button-->
<!--            size="mini"-->
<!--            type="text"-->
<!--            icon="el-icon-delete"-->
<!--            @click="handleDelete(scope.row)"-->
<!--            v-hasPermi="['system:book:remove']"-->
<!--          >删除</el-button>-->
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改实验室信息对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="姓名" prop="bookUserName">
          <el-input v-model="form.bookUserName" placeholder="请输入预订人姓名" readonly/>
        </el-form-item>
<!--        <el-form-item label="预订人ID" prop="bookUserId">-->
<!--          <el-input v-model="form.bookUserId" placeholder="请输入预订人ID" />-->
<!--        </el-form-item>-->
        <el-form-item label="预订实验室" prop="bookPlace">
          <el-input v-model="form.bookPlace" placeholder="请输入预订实验室" readonly/>
        </el-form-item>
        <el-form-item label="预订状态" prop="bookState">
          <el-input v-model="form.bookState" placeholder="请输入预订状态" readonly/>
        </el-form-item>
        <el-form-item label="预订开始时间" prop="bookTimeStart">
          <el-date-picker clearable
            v-model="form.bookTimeStart"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择预订时间" readonly>
          </el-date-picker>
        </el-form-item>
        <el-form-item label="预订结束时间" prop="bookTimeEnd">
          <el-date-picker clearable
            v-model="form.bookTimeEnd"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择预订结束时间" readonly>
          </el-date-picker>
        </el-form-item>
        <el-form-item label="申请信息" prop="applyInfo">
          <el-input v-model="form.applyInfo" placeholder="请输入申请信息" readonly/>
        </el-form-item>
        <el-form-item label="备注" prop="noteInfo">
          <el-input v-model="form.noteInfo" placeholder="等待管理员审核" readonly/>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
<!--        <el-button type="primary" @click="submitForm">确 定</el-button>-->
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import {listBook, getBook, delBook, addBook, updateBook, listMyBook} from "@/api/system/book";

export default {
  name: "Book",
  data() {
    return {
      options: [{
        value: '待审核',
        label: '待审核'
      }, {
        value: '审核通过',
        label: '审核通过'
      }, {
        value: '审核未通过',
        label: '审核未通过'
      }],
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 实验室信息表格数据
      bookList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        bookUserName: null,
        bookUserId: null,
        bookPlace: null,
        bookState: null,
        bookTimeStart: null,
        bookTimeEnd: null,
        applyInfo: null,
        noteInfo: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        // bookUserName: [
        //   { required: true, message: "预订人姓名不能为空", trigger: "blur" }
        // ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询实验室信息列表 */
    getList() {
      this.loading = true;
      listMyBook(this.queryParams).then(response => {
        this.bookList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        bookUserName: null,
        bookUserId: null,
        bookPlace: null,
        bookState: null,
        bookTimeStart: null,
        bookTimeEnd: null,
        applyInfo: null,
        noteInfo: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加实验室信息";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getBook(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "预订详情";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateBook(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addBook(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除实验室信息编号为"' + ids + '"的数据项？').then(function() {
        return delBook(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/book/export', {
        ...this.queryParams
      }, `book_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
