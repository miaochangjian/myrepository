package com.foodisgod.pojo;

public class FoodOrderItem {
    private Integer foodOiId;

    private Integer num;

    private String title;

    private Long price;

    private Long totalFee;

    private Long orderId;

    private Long itemId;

    public Integer getFoodOiId() {
        return foodOiId;
    }

    public void setFoodOiId(Integer foodOiId) {
        this.foodOiId = foodOiId;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Long getTotalFee() {
        return totalFee;
    }

    public void setTotalFee(Long totalFee) {
        this.totalFee = totalFee;
    }

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public Long getItemId() {
        return itemId;
    }

    public void setItemId(Long itemId) {
        this.itemId = itemId;
    }
}