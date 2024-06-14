<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="列车号" prop="trainNumber">
        <el-input
          v-model="queryParams.trainNumber"
          placeholder="请输入列车号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="始发站" prop="startingStation">
        <el-input
          v-model="queryParams.startingStation"
          placeholder="请输入始发站"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="到达站" prop="arrivalStation">
        <el-input
          v-model="queryParams.arrivalStation"
          placeholder="请输入到达站"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="始发时间" prop="startingTime">
        <el-date-picker clearable
          v-model="queryParams.startingTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择始发时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="到达时间" prop="arrivalTime">
        <el-date-picker clearable
          v-model="queryParams.arrivalTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择到达时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="站台号" prop="platformNumber">
        <el-input
          v-model="queryParams.platformNumber"
          placeholder="请输入站台号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>


    <el-table v-loading="loading" :data="buyList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="id" align="center" prop="id" />
      <el-table-column label="列车id" align="center" prop="trainId" />
      <el-table-column label="列车号" align="center" prop="trainNumber" />
      <el-table-column label="始发站" align="center" prop="startingStation" />
      <el-table-column label="到达站" align="center" prop="arrivalStation" />
      <el-table-column label="始发时间" align="center" prop="startingTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.startingTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="到达时间" align="center" prop="arrivalTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.arrivalTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="站台号" align="center" prop="platformNumber" />
      <el-table-column label="座位" align="center" prop="seat">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.sys_seat" :value="scope.row.seat"/>
        </template>
      </el-table-column>

      <el-table-column label="票价" align="center" prop="ticketPrice" />
      <el-table-column label="备注" align="center" prop="remark" />
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

  </div>
</template>

<script>
import { listBuy, getBuy, delBuy, addBuy, updateBuy } from "@/api/system/buy";

export default {
  dicts: ['sys_seat'],
  name: "Buy",
  data() {
    return {
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
      // 购票表格数据
      buyList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        trainId: null,
        trainNumber: null,
        startingStation: null,
        arrivalStation: null,
        startingTime: null,
        arrivalTime: null,
        platformNumber: null,
        seat: null,
        ticketPrice: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询购票列表 */
    getList() {
      this.loading = true;
      listBuy(this.queryParams).then(response => {
        this.buyList = response.rows;
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
        trainId: null,
        trainNumber: null,
        startingStation: null,
        arrivalStation: null,
        startingTime: null,
        arrivalTime: null,
        platformNumber: null,
        seat: null,
        ticketPrice: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        remark: null
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
      this.title = "添加购票";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getBuy(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改购票";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateBuy(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addBuy(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除购票编号为"' + ids + '"的数据项？').then(function() {
        return delBuy(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/buy/export', {
        ...this.queryParams
      }, `buy_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
