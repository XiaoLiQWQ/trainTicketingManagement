package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysBuyMapper;
import com.ruoyi.system.domain.SysBuy;
import com.ruoyi.system.service.ISysBuyService;

/**
 * 购票Service业务层处理
 * 
 * @author

 * @date 2023-04-16
 */
@Service
public class SysBuyServiceImpl implements ISysBuyService 
{
    @Autowired
    private SysBuyMapper sysBuyMapper;

    /**
     * 查询购票
     * 
     * @param id 购票主键
     * @return 购票
     */
    @Override
    public SysBuy selectSysBuyById(Long id)
    {
        return sysBuyMapper.selectSysBuyById(id);
    }

    /**
     * 查询购票列表
     * 
     * @param sysBuy 购票
     * @return 购票
     */
    @Override
    public List<SysBuy> selectSysBuyList(SysBuy sysBuy)
    {
        return sysBuyMapper.selectSysBuyList(sysBuy);
    }

    /**
     * 新增购票
     * 
     * @param sysBuy 购票
     * @return 结果
     */
    @Override
    public int insertSysBuy(SysBuy sysBuy)
    {
        sysBuy.setCreateTime(DateUtils.getNowDate());
        return sysBuyMapper.insertSysBuy(sysBuy);
    }

    /**
     * 修改购票
     * 
     * @param sysBuy 购票
     * @return 结果
     */
    @Override
    public int updateSysBuy(SysBuy sysBuy)
    {
        sysBuy.setUpdateTime(DateUtils.getNowDate());
        return sysBuyMapper.updateSysBuy(sysBuy);
    }

    /**
     * 批量删除购票
     * 
     * @param ids 需要删除的购票主键
     * @return 结果
     */
    @Override
    public int deleteSysBuyByIds(Long[] ids)
    {
        return sysBuyMapper.deleteSysBuyByIds(ids);
    }

    /**
     * 删除购票信息
     * 
     * @param id 购票主键
     * @return 结果
     */
    @Override
    public int deleteSysBuyById(Long id)
    {
        return sysBuyMapper.deleteSysBuyById(id);
    }
}
