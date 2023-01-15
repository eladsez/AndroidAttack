.class Lcom/picvision/seaweedweather/main$10;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/main;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/main;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$10;->this$0:Lcom/picvision/seaweedweather/main;

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/picvision/seaweedweather/main$10;)Lcom/picvision/seaweedweather/main;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/picvision/seaweedweather/main$10;->this$0:Lcom/picvision/seaweedweather/main;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 15
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 875
    packed-switch p2, :pswitch_data_0

    .line 959
    :goto_0
    return-void

    .line 877
    :pswitch_0
    new-instance v12, Landroid/app/AlertDialog$Builder;

    iget-object v13, p0, Lcom/picvision/seaweedweather/main$10;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 878
    const v13, 0x7f060008

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 879
    const v13, 0x7f06000a

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 880
    const-string v13, "\u53d6\u6d88"

    new-instance v14, Lcom/picvision/seaweedweather/main$10$1;

    invoke-direct {v14, p0}, Lcom/picvision/seaweedweather/main$10$1;-><init>(Lcom/picvision/seaweedweather/main$10;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 888
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 891
    :pswitch_1
    new-instance v12, Landroid/app/AlertDialog$Builder;

    iget-object v13, p0, Lcom/picvision/seaweedweather/main$10;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 892
    const-string v13, "\u5173\u4e8e\u6d77\u85fb\u5929\u6c14\u9884\u62a5"

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 893
    const v13, 0x7f06000b

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 894
    const v13, 0x7f06000c

    new-instance v14, Lcom/picvision/seaweedweather/main$10$2;

    invoke-direct {v14, p0}, Lcom/picvision/seaweedweather/main$10$2;-><init>(Lcom/picvision/seaweedweather/main$10;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 903
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 907
    :pswitch_2
    iget-object v12, p0, Lcom/picvision/seaweedweather/main$10;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 909
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x7f030002

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 910
    .local v0, "age_setting":Landroid/view/View;
    iget-object v12, p0, Lcom/picvision/seaweedweather/main$10;->this$0:Lcom/picvision/seaweedweather/main;

    const-string v13, "checkedId"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/picvision/seaweedweather/main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 911
    .local v9, "sp":Landroid/content/SharedPreferences;
    const-string v12, "Id"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 912
    .local v3, "id":I
    const v12, 0x7f090005

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 913
    .local v2, "group":Landroid/widget/RadioGroup;
    const v12, 0x7f090006

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    .line 915
    .local v7, "rbtn1":Landroid/widget/RadioButton;
    const v12, 0x7f090007

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 916
    .local v8, "rbtn2":Landroid/widget/RadioButton;
    if-nez v3, :cond_1

    .line 917
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 922
    :cond_0
    :goto_1
    new-instance v12, Landroid/app/AlertDialog$Builder;

    iget-object v13, p0, Lcom/picvision/seaweedweather/main$10;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 923
    const v13, 0x7f060016

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 924
    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 925
    const v13, 0x7f060006

    new-instance v14, Lcom/picvision/seaweedweather/main$10$3;

    invoke-direct {v14, p0, v7, v8}, Lcom/picvision/seaweedweather/main$10$3;-><init>(Lcom/picvision/seaweedweather/main$10;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 938
    const v13, 0x7f06000c

    new-instance v14, Lcom/picvision/seaweedweather/main$10$4;

    invoke-direct {v14, p0}, Lcom/picvision/seaweedweather/main$10$4;-><init>(Lcom/picvision/seaweedweather/main$10;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 945
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 918
    :cond_1
    const/4 v12, 0x1

    if-ne v3, v12, :cond_0

    .line 919
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 949
    .end local v0    # "age_setting":Landroid/view/View;
    .end local v2    # "group":Landroid/widget/RadioGroup;
    .end local v3    # "id":I
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "rbtn1":Landroid/widget/RadioButton;
    .end local v8    # "rbtn2":Landroid/widget/RadioButton;
    .end local v9    # "sp":Landroid/content/SharedPreferences;
    :pswitch_3
    iget-object v12, p0, Lcom/picvision/seaweedweather/main$10;->this$0:Lcom/picvision/seaweedweather/main;

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Lcom/picvision/seaweedweather/main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 950
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 951
    .local v4, "imsi":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "http://211.95.79.112/wapforum/index.jsp?imsi="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&software=SeaweedWeatherV1.0.0_FREE_AD1.5_AllSizes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 952
    .local v1, "community":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 953
    .local v11, "uri":Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v6, v12, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 954
    .local v6, "intent":Landroid/content/Intent;
    iget-object v12, p0, Lcom/picvision/seaweedweather/main$10;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-virtual {v12, v6}, Lcom/picvision/seaweedweather/main;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
