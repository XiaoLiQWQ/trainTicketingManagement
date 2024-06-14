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
      <el-form-item label="座位" prop="seat">
        <el-select v-model="queryParams.seat" placeholder="请选择座位" clearable>
          <el-option
            v-for="dict in dict.type.sys_seat"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="票价" prop="ticketPrice">
        <el-input
          v-model="queryParams.ticketPrice"
          placeholder="请输入票价"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="余票数" prop="remainingTickets">
        <el-input
          v-model="queryParams.remainingTickets"
          placeholder="请输入余票数"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system:train:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system:train:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system:train:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:train:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="trainList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="id" align="center" prop="id" />
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
      <el-table-column label="余票数" align="center" prop="remainingTickets" />
      <el-table-column label="备注" align="center" prop="remark" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:train:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:train:remove']"
          >删除</el-button>
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

    <!-- 添加或修改列车对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="列车号" prop="trainNumber">
          <el-input v-model="form.trainNumber" placeholder="请输入列车号" />
        </el-form-item>
        <el-form-item label="始发站" prop="startingStation">
          <el-input v-model="form.startingStation" placeholder="请输入始发站" />
        </el-form-item>
        <el-form-item label="到达站" prop="arrivalStation">
          <el-input v-model="form.arrivalStation" placeholder="请输入到达站" />
        </el-form-item>
        <el-form-item label="始发时间" prop="startingTime">
          <el-date-picker clearable
            v-model="form.startingTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择始发时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="到达时间" prop="arrivalTime">
          <el-date-picker clearable
            v-model="form.arrivalTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择到达时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="站台号" prop="platformNumber">
          <el-input v-model="form.platformNumber" placeholder="请输入站台号" />
        </el-form-item>
        <el-form-item label="座位" prop="seat">
          <el-select v-model="form.seat" placeholder="请选择座位">
            <el-option
              v-for="dict in dict.type.sys_seat"
              :key="dict.value"
              :label="dict.label"
:value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="票价" prop="ticketPrice">
          <el-input v-model="form.ticketPrice" placeholder="请输入票价" />
        </el-form-item>
        <el-form-item label="余票数" prop="remainingTickets">
          <el-input v-model="form.remainingTickets" placeholder="请输入余票数" />
        </el-form-item>
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" type="textarea" placeholder="请输入内容" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listTrain, getTrain, delTrain, addTrain, updateTrain } from "@/api/system/train";

export default {
  name: "Train",
  dicts: ['sys_seat'],
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
      // 列车表格数据
      trainList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        trainNumber: null,
        startingStation: null,
        arrivalStation: null,
        startingTime: null,
        arrivalTime: null,
        platformNumber: null,
        seat: null,
        ticketPrice: null,
        remainingTickets: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        trainNumber: [
          { required: true, message: "列车号不能为空", trigger: "blur" }
        ],
        startingStation: [
          { required: true, message: "始发站不能为空", trigger: "blur" }
        ],
        arrivalStation: [
          { required: true, message: "到达站不能为空", trigger: "blur" }
        ],
        startingTime: [
          { required: true, message: "始发时间不能为空", trigger: "blur" }
        ],
        arrivalTime: [
          { required: true, message: "到达时间不能为空", trigger: "blur" }
        ],
        platformNumber: [
          { required: true, message: "站台号不能为空", trigger: "blur" }
        ],
        seat: [
          { required: true, message: "座位不能为空", trigger: "change" }
        ],
        ticketPrice: [
          { required: true, message: "票价不能为空", trigger: "blur" }
        ],
        remainingTickets: [
          { required: true, message: "余票数不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询列车列表 */
    getList() {
      this.loading = true;
      listTrain(this.queryParams).then(response => {
        this.trainList = response.rows;
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
        trainNumber: null,
        startingStation: null,
        arrivalStation: null,
        startingTime: null,
        arrivalTime: null,
        platformNumber: null,
        seat: null,
        ticketPrice: null,
        remainingTickets: null,
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
      this.title = "添加列车";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getTrain(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改列车";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateTrain(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addTrain(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除列车编号为"' + ids + '"的数据项？').then(function() {
        return delTrain(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/train/export', {
        ...this.queryParams
      }, `train_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
