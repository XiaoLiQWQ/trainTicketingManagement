package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.SysBuy;

/**
 * 购票Service接口
 * 
 * @author

 * @date 2023-04-16
 */
public interface ISysBuyService 
{
    /**
     * 查询购票
     * 
     * @param id 购票主键
     * @return 购票
     */
    public SysBuy selectSysBuyById(Long id);

    /**
     * 查询购票列表
     * 
     * @param sysBuy 购票
     * @return 购票集合
     */
    public List<SysBuy> selectSysBuyList(SysBuy sysBuy);

    /**
     * 新增购票
     * 
     * @param sysBuy 购票
     * @return 结果
     */
    public int insertSysBuy(SysBuy sysBuy);

    /**
     * 修改购票
     * 
     * @param sysBuy 购票
     * @return 结果
     */
    public int updateSysBuy(SysBuy sysBuy);

    /**
     * 批量删除购票
     * 
     * @param ids 需要删除的购票主键集合
     * @return 结果
     */
    public int deleteSysBuyByIds(Long[] ids);

    /**
     * 删除购票信息
     * 
     * @param id 购票主键
     * @return 结果
     */
    public int deleteSysBuyById(Long id);
}
