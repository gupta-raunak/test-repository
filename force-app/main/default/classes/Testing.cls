public  class Testing {
    public Testing() {

        List<Account> accList = [select id from Account];
System.debug('test class' + accList);
    }
}