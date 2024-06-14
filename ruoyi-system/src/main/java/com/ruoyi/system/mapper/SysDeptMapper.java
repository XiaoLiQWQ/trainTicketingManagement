package com.ruoyi.system.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.ruoyi.common.core.domain.entity.SysDept;

/**
 * 住址管理 数据层
 * 
 * @author
 */
public interface SysDeptMapper
{
    /**
     * 查询住址管理数据
     * 
     * @param dept 住址信息
     * @return 住址信息集合
     */
    public List<SysDept> selectDeptList(SysDept dept);

    /**
     * 根据角色ID查询住址树信息
     * 
     * @param roleId 角色ID
     * @param deptCheckStrictly 住址树选择项是否关联显示
     * @return 选中住址列表
     */
    public List<Long> selectDeptListByRoleId(@Param("roleId") Long roleId, @Param("deptCheckStrictly") boolean deptCheckStrictly);

    /**
     * 根据住址ID查询信息
     * 
     * @param deptId 住址ID
     * @return 住址信息
     */
    public SysDept selectDeptById(Long deptId);

    /**
     * 根据ID查询所有子住址
     * 
     * @param deptId 住址ID
     * @return 住址列表
     */
    public List<SysDept> selectChildrenDeptById(Long deptId);

    /**
     * 根据ID查询所有子住址（正常状态）
     * 
     * @param deptId 住址ID
     * @return 子住址数
     */
    public int selectNormalChildrenDeptById(Long deptId);

    /**
     * 是否存在子节点
     * 
     * @param deptId 住址ID
     * @return 结果
     */
    public int hasChildByDeptId(Long deptId);

    /**
     * 查询住址是否存在用户
     * 
     * @param deptId 住址ID
     * @return 结果
     */
    public int checkDeptExistUser(Long deptId);

    /**
     * 校验住址是否唯一
     * 
     * @param deptName 住址
     * @param parentId 父住址ID
     * @return 结果
     */
    public SysDept checkDeptNameUnique(@Param("deptName") String deptName, @Param("parentId") Long parentId);

    /**
     * 新增住址信息
     * 
     * @param dept 住址信息
     * @return 结果
     */
    public int insertDept(SysDept dept);

    /**
     * 修改住址信息
     * 
     * @param dept 住址信息
     * @return 结果
     */
    public int updateDept(SysDept dept);

    /**
     * 修改所在住址正常状态
     * 
     * @param deptIds 住址ID组
     */
    public void updateDeptStatusNormal(Long[] deptIds);

    /**
     * 修改子元素关系
     * 
     * @param depts 子元素
     * @return 结果
     */
    public int updateDeptChildren(@Param("depts") List<SysDept> depts);

    /**
     * 删除住址管理信息
     * 
     * @param deptId 住址ID
     * @return 结果
     */
    public int deleteDeptById(Long deptId);
}
