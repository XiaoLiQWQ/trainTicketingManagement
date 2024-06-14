package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysTrainMapper;
import com.ruoyi.system.domain.SysTrain;
import com.ruoyi.system.service.ISysTrainService;

/**
 * 列车Service业务层处理
 * 
 * @author

 * @date 2023-04-16
 */
@Service
public class SysTrainServiceImpl implements ISysTrainService 
{
    @Autowired
    private SysTrainMapper sysTrainMapper;

    /**
     * 查询列车
     * 
     * @param id 列车主键
     * @return 列车
     */
    @Override
    public SysTrain selectSysTrainById(Long id)
    {
        return sysTrainMapper.selectSysTrainById(id);
    }

    /**
     * 查询列车列表
     * 
     * @param sysTrain 列车
     * @return 列车
     */
    @Override
    public List<SysTrain> selectSysTrainList(SysTrain sysTrain)
    {
        return sysTrainMapper.selectSysTrainList(sysTrain);
    }

    /**
     * 新增列车
     * 
     * @param sysTrain 列车
     * @return 结果
     */
    @Override
    public int insertSysTrain(SysTrain sysTrain)
    {
        sysTrain.setCreateTime(DateUtils.getNowDate());
        return sysTrainMapper.insertSysTrain(sysTrain);
    }

    /**
     * 修改列车
     * 
     * @param sysTrain 列车
     * @return 结果
     */
    @Override
    public int updateSysTrain(SysTrain sysTrain)
    {
        sysTrain.setUpdateTime(DateUtils.getNowDate());
        return sysTrainMapper.updateSysTrain(sysTrain);
    }

    /**
     * 批量删除列车
     * 
     * @param ids 需要删除的列车主键
     * @return 结果
     */
    @Override
    public int deleteSysTrainByIds(Long[] ids)
    {
        return sysTrainMapper.deleteSysTrainByIds(ids);
    }

    /**
     * 删除列车信息
     * 
     * @param id 列车主键
     * @return 结果
     */
    @Override
    public int deleteSysTrainById(Long id)
    {
        return sysTrainMapper.deleteSysTrainById(id);
    }
}
