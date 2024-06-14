package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.SysSuggestion;

/**
 * 建议Mapper接口
 * 
 * @author
 * @date 2023-03-09
 */
public interface SysSuggestionMapper 
{
    /**
     * 查询建议
     * 
     * @param id 建议主键
     * @return 建议
     */
    public SysSuggestion selectSysSuggestionById(Long id);

    /**
     * 查询建议列表
     * 
     * @param sysSuggestion 建议
     * @return 建议集合
     */
    public List<SysSuggestion> selectSysSuggestionList(SysSuggestion sysSuggestion);

    /**
     * 新增建议
     * 
     * @param sysSuggestion 建议
     * @return 结果
     */
    public int insertSysSuggestion(SysSuggestion sysSuggestion);

    /**
     * 修改建议
     * 
     * @param sysSuggestion 建议
     * @return 结果
     */
    public int updateSysSuggestion(SysSuggestion sysSuggestion);

    /**
     * 删除建议
     * 
     * @param id 建议主键
     * @return 结果
     */
    public int deleteSysSuggestionById(Long id);

    /**
     * 批量删除建议
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysSuggestionByIds(Long[] ids);
}
