package com.ruoyi.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.system.domain.SysTrain;
import com.ruoyi.system.service.ISysTrainService;
import com.ruoyi.system.service.ISysUserService;
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
import com.ruoyi.system.domain.SysBuy;
import com.ruoyi.system.service.ISysBuyService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 购票Controller
 *
 * @author

 * @date 2023-04-16
 */
@RestController
@RequestMapping("/system/buy")
public class SysBuyController extends BaseController
{
    @Autowired
    private ISysBuyService sysBuyService;

    @Autowired
    private ISysTrainService trainService;

    @Autowired
    private ISysUserService userService;

    /**
     * 查询购票列表
     */
    @GetMapping("/list")
    public TableDataInfo list(SysBuy sysBuy)
    {
        sysBuy.setCreateBy(getUserId()+"");
        startPage();
        List<SysBuy> list = sysBuyService.selectSysBuyList(sysBuy);
        return getDataTable(list);
    }

    /**
     * 导出购票列表
     */
    @Log(title = "购票", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysBuy sysBuy)
    {
        sysBuy.setCreateBy(getUserId()+"");
        List<SysBuy> list = sysBuyService.selectSysBuyList(sysBuy);
        ExcelUtil<SysBuy> util = new ExcelUtil<SysBuy>(SysBuy.class);
        util.exportExcel(response, list, "购票数据");
    }

    /**
     * 获取购票详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(sysBuyService.selectSysBuyById(id));
    }

    /**
     * 新增购票
     */
    @Log(title = "购票", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysBuy sysBuy)
    {
        SysTrain sysTrain = trainService.selectSysTrainById(sysBuy.getTrainId());
        if (sysTrain.getRemainingTickets()<=0){
            return AjaxResult.error("已售罄");
        }
        SysUser sysUser = userService.selectUserById(getUserId());
        if (sysUser.getBalance().compareTo(sysBuy.getTicketPrice())<=0){
            return AjaxResult.error("余额不足");
        }else {
            sysUser.setBalance(sysUser.getBalance().subtract(sysBuy.getTicketPrice()));
            userService.updateUserBalance(sysUser);
            sysTrain.setRemainingTickets(sysTrain.getRemainingTickets()-1);
            trainService.updateSysTrain(sysTrain);
        }
        sysBuy.setCreateBy(getUserId()+"");
        return toAjax(sysBuyService.insertSysBuy(sysBuy));
    }

    /**
     * 修改购票
     */
    @Log(title = "购票", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysBuy sysBuy)
    {
        return toAjax(sysBuyService.updateSysBuy(sysBuy));
    }

    /**
     * 删除购票
     */
    @Log(title = "购票", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(sysBuyService.deleteSysBuyByIds(ids));
    }
}
