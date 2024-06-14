package com.ruoyi.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 实验室信息对象 sys_place
 *
 * @author
 * @date 2023-02-24
 */
public class SysPlace extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 实验室名 */
    @Excel(name = "实验室名")
    private String pName;

    /** 详细地址 */
    @Excel(name = "详细地址")
    private String pAddress;

    /** 设备数 */
    @Excel(name = "设备数")
    private String pNum;

    /** 所属学校 */
    @Excel(name = "所属学校")
    private String pSchool;

    /** 状态 */
    @Excel(name = "状态")
    private String pState;

    /** 可预订开始时间 */
    @JsonFormat(pattern = "yyyy-MM-dd H:m:s")
    @Excel(name = "可预订开始时间", width = 30, dateFormat = "yyyy-MM-dd H:m:s")
    private Date pTimeEnd;

    /** 可预订结束时间 */
    @JsonFormat(pattern = "yyyy-MM-dd H:m:s")
    @Excel(name = "可预订结束时间", width = 30, dateFormat = "yyyy-MM-dd H:m:s")
    private Date pTimeStart;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setpName(String pName)
    {
        this.pName = pName;
    }

    public String getpName()
    {
        return pName;
    }
    public void setpAddress(String pAddress)
    {
        this.pAddress = pAddress;
    }

    public String getpAddress()
    {
        return pAddress;
    }
    public void setpNum(String pNum)
    {
        this.pNum = pNum;
    }

    public String getpNum()
    {
        return pNum;
    }
    public void setpSchool(String pSchool)
    {
        this.pSchool = pSchool;
    }

    public String getpSchool()
    {
        return pSchool;
    }
    public void setpState(String pState)
    {
        this.pState = pState;
    }

    public String getpState()
    {
        return pState;
    }
    public void setpTimeEnd(Date pTimeEnd)
    {
        this.pTimeEnd = pTimeEnd;
    }

    public Date getpTimeEnd()
    {
        return pTimeEnd;
    }
    public void setpTimeStart(Date pTimeStart)
    {
        this.pTimeStart = pTimeStart;
    }

    public Date getpTimeStart()
    {
        return pTimeStart;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("pName", getpName())
            .append("pAddress", getpAddress())
            .append("pNum", getpNum())
            .append("pSchool", getpSchool())
            .append("pState", getpState())
            .append("pTimeEnd", getpTimeEnd())
            .append("pTimeStart", getpTimeStart())
            .toString();
    }
}
