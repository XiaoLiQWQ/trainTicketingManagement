package com.ruoyi.system.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 列车对象 sys_train
 * 
 * @author

 * @date 2023-04-16
 */
public class SysTrain extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 列车号 */
    @Excel(name = "列车号")
    private String trainNumber;

    /** 始发站 */
    @Excel(name = "始发站")
    private String startingStation;

    /** 到达站 */
    @Excel(name = "到达站")
    private String arrivalStation;

    /** 始发时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "始发时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startingTime;

    /** 到达时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "到达时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date arrivalTime;

    /** 站台号 */
    @Excel(name = "站台号")
    private Long platformNumber;

    /** 座位 */
    @Excel(name = "座位")
    private String seat;

    /** 票价 */
    @Excel(name = "票价")
    private BigDecimal ticketPrice;

    /** 余票数 */
    @Excel(name = "余票数")
    private Long remainingTickets;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTrainNumber(String trainNumber) 
    {
        this.trainNumber = trainNumber;
    }

    public String getTrainNumber() 
    {
        return trainNumber;
    }
    public void setStartingStation(String startingStation) 
    {
        this.startingStation = startingStation;
    }

    public String getStartingStation() 
    {
        return startingStation;
    }
    public void setArrivalStation(String arrivalStation) 
    {
        this.arrivalStation = arrivalStation;
    }

    public String getArrivalStation() 
    {
        return arrivalStation;
    }
    public void setStartingTime(Date startingTime) 
    {
        this.startingTime = startingTime;
    }

    public Date getStartingTime() 
    {
        return startingTime;
    }
    public void setArrivalTime(Date arrivalTime) 
    {
        this.arrivalTime = arrivalTime;
    }

    public Date getArrivalTime() 
    {
        return arrivalTime;
    }
    public void setPlatformNumber(Long platformNumber) 
    {
        this.platformNumber = platformNumber;
    }

    public Long getPlatformNumber() 
    {
        return platformNumber;
    }
    public void setSeat(String seat) 
    {
        this.seat = seat;
    }

    public String getSeat() 
    {
        return seat;
    }
    public void setTicketPrice(BigDecimal ticketPrice) 
    {
        this.ticketPrice = ticketPrice;
    }

    public BigDecimal getTicketPrice() 
    {
        return ticketPrice;
    }
    public void setRemainingTickets(Long remainingTickets) 
    {
        this.remainingTickets = remainingTickets;
    }

    public Long getRemainingTickets() 
    {
        return remainingTickets;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("trainNumber", getTrainNumber())
            .append("startingStation", getStartingStation())
            .append("arrivalStation", getArrivalStation())
            .append("startingTime", getStartingTime())
            .append("arrivalTime", getArrivalTime())
            .append("platformNumber", getPlatformNumber())
            .append("seat", getSeat())
            .append("ticketPrice", getTicketPrice())
            .append("remainingTickets", getRemainingTickets())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
