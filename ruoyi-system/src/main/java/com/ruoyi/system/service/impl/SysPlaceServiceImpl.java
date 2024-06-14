package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysPlaceMapper;
import com.ruoyi.system.domain.SysPlace;
import com.ruoyi.system.service.ISysPlaceService;

/**
 * 实验室信息Service业务层处理
 * 
 * @author
 * @date 2023-02-24
 */
@Service
public class SysPlaceServiceImpl implements ISysPlaceService 
{
    @Autowired
    private SysPlaceMapper sysPlaceMapper;

    /**
     * 查询实验室信息
     * 
     * @param id 实验室信息主键
     * @return 实验室信息
     */
    @Override
    public SysPlace selectSysPlaceById(Long id)
    {
        return sysPlaceMapper.selectSysPlaceById(id);
    }

    /**
     * 查询实验室信息列表
     * 
     * @param sysPlace 实验室信息
     * @return 实验室信息
     */
    @Override
    public List<SysPlace> selectSysPlaceList(SysPlace sysPlace)
    {
        return sysPlaceMapper.selectSysPlaceList(sysPlace);
    }

    /**
     * 新增实验室信息
     * 
     * @param sysPlace 实验室信息
     * @return 结果
     */
    @Override
    public int insertSysPlace(SysPlace sysPlace)
    {
        return sysPlaceMapper.insertSysPlace(sysPlace);
    }

    /**
     * 修改实验室信息
     * 
     * @param sysPlace 实验室信息
     * @return 结果
     */
    @Override
    public int updateSysPlace(SysPlace sysPlace)
    {
        return sysPlaceMapper.updateSysPlace(sysPlace);
    }

    /**
     * 批量删除实验室信息
     * 
     * @param ids 需要删除的实验室信息主键
     * @return 结果
     */
    @Override
    public int deleteSysPlaceByIds(Long[] ids)
    {
        return sysPlaceMapper.deleteSysPlaceByIds(ids);
    }

    /**
     * 删除实验室信息信息
     * 
     * @param id 实验室信息主键
     * @return 结果
     */
    @Override
    public int deleteSysPlaceById(Long id)
    {
        return sysPlaceMapper.deleteSysPlaceById(id);
    }
}
