public String password { get; set; }
  	public String username { get; set; }
    public String ErrorMSG { get; set; }

public PageReference ContractEncrypt() {
  PageReference orderPage = new PageReference('/apex/ContractEncrypt?c=' + CurrentApply.Id +'&ct=' + ct );
  orderPage.setRedirect(true);
  return orderPage;
}

public PageReference AccountApplyConfirm() {
if (password != null && password == CurrentApply.UniteNum__c) {
  PageReference orderPage = new PageReference('/apex/AccountApplyConfirm_PDF?c=' + CurrentApply.Id +'&ct=' + ct );
  orderPage.setRedirect(true);
  return orderPage;
}else {
  // 密碼不正確
  //ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, '密碼不正確'));
  ErrorMSG = '身分證字號或統一編號不正確'; 
  return null; 
}
}