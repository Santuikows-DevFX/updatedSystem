package main.storeMethods;

public interface AEInterface {

    public abstract void login();

    public abstract void adminTask();

    public abstract void staffTask();

    public abstract void manageProducts();

    public abstract void viewCriticalLevel();

    public abstract void viewProductStatistics();

    public abstract void frozenProducts();

    public abstract void toyProducts();

    public abstract void craftProducts();

    public abstract void cannedProducts();

    public abstract void liquorProducts();

    public abstract void utensilProducts();

    public abstract void snacksProducts();

    public abstract void pdrCondiProducts();

    public abstract void essentialProducts();

    public abstract void containerProducts();

    public abstract void sortDaysLeftASC();

    public abstract void sortDaysLeftDESC();

    public abstract void searchByDaysLeft();

    public abstract void displaySpecificDaysLeft();
    //---- revision ends

    // public abstract void selectTask();

    public abstract void addProduct();

    public abstract void editQnt();

    // public abstract void viewOverAllItems(); 

    public abstract void viewItemsExpiry();

    public abstract void removeItem();

    public abstract void viewExpiredItems();

    public abstract void exitSystem();

    public abstract void postMethod();

    public abstract void selectCategory();

    public abstract void addQuantity();

    public abstract void subtractQuantity();

    public abstract long compareDates(java.sql.Date dateToday, java.sql.Date expiryDate);

    public abstract void show90DaysBelow();

    public abstract void nonExpiryItems();

    public abstract void updateTodaysDate();

    public abstract void removeExpiredProducts();

    public abstract void clearExpiredProducts();

    public abstract void logsPostMethod();

    public abstract void viewProductsDate();

    public abstract void updateDateModified();

    public abstract void updateDateRemoved();

    public abstract void idSetter();
}
