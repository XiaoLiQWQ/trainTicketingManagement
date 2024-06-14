package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.common.core.domain.TreeSelect;
import com.ruoyi.common.core.domain.entity.SysDept;

/**
 * 住址管理 服务层
 *
 * @author
 */
public interface ISysDeptService
{
    /**
     * 查询住址管理数据
     *
     * @param dept 住址信息
     * @return 住址信息集合
     */
    public List<SysDept> selectDeptList(SysDept dept);

    /**
     * 构建前端所需要树结构
     *
     * @param depts 住址列表
     * @return 树结构列表
     */
    public List<SysDept> buildDeptTree(List<SysDept> depts);

    /**
     * 构建前端所需要下拉树结构
     *
     * @param depts 住址列表
     * @return 下拉树结构列表
     */
    public List<TreeSelect> buildDeptTreeSelect(List<SysDept> depts);

    /**
     * 根据角色ID查询住址树信息
     *
     * @param roleId 角色ID
     * @return 选中住址列表
     */
    public List<Long> selectDeptListByRoleId(Long roleId);

    /**
     * 根据住址ID查询信息
     *
     * @param deptId 住址ID
     * @return 住址信息
     */
    public SysDept selectDeptById(Long deptId);

    /**
     * 根据ID查询所有子住址（正常状态）
     *
     * @param deptId 住址ID
     * @return 子住址数
     */
    public int selectNormalChildrenDeptById(Long deptId);

    /**
     * 是否存在住址子节点
     *
     * @param deptId 住址ID
     * @return 结果
     */
    public boolean hasChildByDeptId(Long deptId);

    /**
     * 查询住址是否存在用户
     *
     * @param deptId 住址ID
     * @return 结果 true 存在 false 不存在
     */
    public boolean checkDeptExistUser(Long deptId);

    /**
     * 校验住址是否唯一
     *
     * @param dept 住址信息
     * @return 结果
     */
    public String checkDeptNameUnique(SysDept dept);

    /**
     * 校验住址是否有数据权限
     *
     * @param deptId 住址id
     */
    public void checkDeptDataScope(Long deptId);

    /**
     * 新增保存住址信息
     *
     * @param dept 住址信息
     * @return 结果
     */
    public int insertDept(SysDept dept);

    /**
     * 修改保存住址信息
     *
     * @param dept 住址信息
     * @return 结果
     */
    public int updateDept(SysDept dept);

    /**
     * 删除住址管理信息
     *
     * @param deptId 住址ID
     * @return 结果
     */
    public int deleteDeptById(Long deptId);
}
