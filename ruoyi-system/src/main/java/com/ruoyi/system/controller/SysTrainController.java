package com.ruoyi.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.SysTrain;
import com.ruoyi.system.service.ISysTrainService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 列车Controller
 *
 * @author

 * @date 2023-04-16
 */
@RestController
@RequestMapping("/system/train")
public class SysTrainController extends BaseController
{
    @Autowired
    private ISysTrainService sysTrainService;

    /**
     * 查询列车列表
     */
    @GetMapping("/list")
    public TableDataInfo list(SysTrain sysTrain)
    {
        startPage();
        List<SysTrain> list = sysTrainService.selectSysTrainList(sysTrain);
        return getDataTable(list);
    }

    /**
     * 导出列车列表
     */
    @Log(title = "列车", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysTrain sysTrain)
    {
        List<SysTrain> list = sysTrainService.selectSysTrainList(sysTrain);
        ExcelUtil<SysTrain> util = new ExcelUtil<SysTrain>(SysTrain.class);
        util.exportExcel(response, list, "列车数据");
    }

    /**
     * 获取列车详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(sysTrainService.selectSysTrainById(id));
    }

    /**
     * 新增列车
     */
    @Log(title = "列车", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysTrain sysTrain)
    {
        return toAjax(sysTrainService.insertSysTrain(sysTrain));
    }

    /**
     * 修改列车
     */
    @Log(title = "列车", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysTrain sysTrain)
    {
        return toAjax(sysTrainService.updateSysTrain(sysTrain));
    }

    /**
     * 删除列车
     */
    @Log(title = "列车", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(sysTrainService.deleteSysTrainByIds(ids));
    }
}
