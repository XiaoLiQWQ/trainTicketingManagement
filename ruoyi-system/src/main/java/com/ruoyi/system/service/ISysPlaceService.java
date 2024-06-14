package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.SysPlace;

/**
 * 实验室信息Service接口
 * 
 * @author
 * @date 2023-02-24
 */
public interface ISysPlaceService 
{
    /**
     * 查询实验室信息
     * 
     * @param id 实验室信息主键
     * @return 实验室信息
     */
    public SysPlace selectSysPlaceById(Long id);

    /**
     * 查询实验室信息列表
     * 
     * @param sysPlace 实验室信息
     * @return 实验室信息集合
     */
    public List<SysPlace> selectSysPlaceList(SysPlace sysPlace);

    /**
     * 新增实验室信息
     * 
     * @param sysPlace 实验室信息
     * @return 结果
     */
    public int insertSysPlace(SysPlace sysPlace);

    /**
     * 修改实验室信息
     * 
     * @param sysPlace 实验室信息
     * @return 结果
     */
    public int updateSysPlace(SysPlace sysPlace);

    /**
     * 批量删除实验室信息
     * 
     * @param ids 需要删除的实验室信息主键集合
     * @return 结果
     */
    public int deleteSysPlaceByIds(Long[] ids);

    /**
     * 删除实验室信息信息
     * 
     * @param id 实验室信息主键
     * @return 结果
     */
    public int deleteSysPlaceById(Long id);
}
