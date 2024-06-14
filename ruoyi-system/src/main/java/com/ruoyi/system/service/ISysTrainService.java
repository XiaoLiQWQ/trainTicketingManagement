package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.SysTrain;

/**
 * 列车Service接口
 * 
 * @author

 * @date 2023-04-16
 */
public interface ISysTrainService 
{
    /**
     * 查询列车
     * 
     * @param id 列车主键
     * @return 列车
     */
    public SysTrain selectSysTrainById(Long id);

    /**
     * 查询列车列表
     * 
     * @param sysTrain 列车
     * @return 列车集合
     */
    public List<SysTrain> selectSysTrainList(SysTrain sysTrain);

    /**
     * 新增列车
     * 
     * @param sysTrain 列车
     * @return 结果
     */
    public int insertSysTrain(SysTrain sysTrain);

    /**
     * 修改列车
     * 
     * @param sysTrain 列车
     * @return 结果
     */
    public int updateSysTrain(SysTrain sysTrain);

    /**
     * 批量删除列车
     * 
     * @param ids 需要删除的列车主键集合
     * @return 结果
     */
    public int deleteSysTrainByIds(Long[] ids);

    /**
     * 删除列车信息
     * 
     * @param id 列车主键
     * @return 结果
     */
    public int deleteSysTrainById(Long id);
}
