package com.ruoyi.system.service.impl;

import java.util.List;

import com.ruoyi.common.core.domain.entity.SysRole;
import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysSuggestionMapper;
import com.ruoyi.system.domain.SysSuggestion;
import com.ruoyi.system.service.ISysSuggestionService;

/**
 * 建议Service业务层处理
 *
 * @author
 * @date 2023-03-09
 */
@Service
public class SysSuggestionServiceImpl implements ISysSuggestionService
{
    @Autowired
    private SysSuggestionMapper sysSuggestionMapper;

    /**
     * 查询建议
     *
     * @param id 建议主键
     * @return 建议
     */
    @Override
    public SysSuggestion selectSysSuggestionById(Long id)
    {
        return sysSuggestionMapper.selectSysSuggestionById(id);
    }

    /**
     * 查询建议列表
     *
     * @param sysSuggestion 建议
     * @return 建议
     */
    @Override
    public List<SysSuggestion> selectSysSuggestionList(SysSuggestion sysSuggestion)
    {
        LoginUser loginUser = SecurityUtils.getLoginUser();
        SysRole sysRole = loginUser.getUser().getRoles().get(0);
        if(sysRole.getRoleId()!=1){
            sysSuggestion.setCreateBy(loginUser.getUserId()+"");
        }

        return sysSuggestionMapper.selectSysSuggestionList(sysSuggestion);
    }

    /**
     * 新增建议
     *
     * @param sysSuggestion 建议
     * @return 结果
     */
    @Override
    public int insertSysSuggestion(SysSuggestion sysSuggestion)
    {
        sysSuggestion.setCreateTime(DateUtils.getNowDate());
        LoginUser loginUser = SecurityUtils.getLoginUser();
        sysSuggestion.setName(loginUser.getUser().getNickName());
        sysSuggestion.setCreateBy(loginUser.getUserId()+"");
        return sysSuggestionMapper.insertSysSuggestion(sysSuggestion);
    }

    /**
     * 修改建议
     *
     * @param sysSuggestion 建议
     * @return 结果
     */
    @Override
    public int updateSysSuggestion(SysSuggestion sysSuggestion)
    {
        return sysSuggestionMapper.updateSysSuggestion(sysSuggestion);
    }

    /**
     * 批量删除建议
     *
     * @param ids 需要删除的建议主键
     * @return 结果
     */
    @Override
    public int deleteSysSuggestionByIds(Long[] ids)
    {
        return sysSuggestionMapper.deleteSysSuggestionByIds(ids);
    }

    /**
     * 删除建议信息
     *
     * @param id 建议主键
     * @return 结果
     */
    @Override
    public int deleteSysSuggestionById(Long id)
    {
        return sysSuggestionMapper.deleteSysSuggestionById(id);
    }
}
