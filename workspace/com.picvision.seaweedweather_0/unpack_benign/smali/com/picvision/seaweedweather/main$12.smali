.class Lcom/picvision/seaweedweather/main$12;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/main;->CitysSpinner(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/picvision/seaweedweather/main;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/main;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$12;->this$0:Lcom/picvision/seaweedweather/main;

    iput p2, p0, Lcom/picvision/seaweedweather/main$12;->val$position:I

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1023
    iget-object v9, p0, Lcom/picvision/seaweedweather/main$12;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v9, v9, Lcom/picvision/seaweedweather/main;->alert:Landroid/app/AlertDialog;

    if-eqz v9, :cond_0

    .line 1024
    iget-object v9, p0, Lcom/picvision/seaweedweather/main$12;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v9, v9, Lcom/picvision/seaweedweather/main;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 1026
    :cond_0
    iget-object v9, p0, Lcom/picvision/seaweedweather/main$12;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v9, v9, Lcom/picvision/seaweedweather/main;->citylist:Ljava/util/List;

    iget-object v10, p0, Lcom/picvision/seaweedweather/main$12;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-static {v10}, Lcom/picvision/seaweedweather/main;->access$8(Lcom/picvision/seaweedweather/main;)Landroid/widget/Spinner;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/picvision/seaweedweather/model/Citys;

    invoke-virtual {v9}, Lcom/picvision/seaweedweather/model/Citys;->getCityId()I

    move-result v2

    .line 1027
    .local v2, "cityid":I
    iget-object v9, p0, Lcom/picvision/seaweedweather/main$12;->this$0:Lcom/picvision/seaweedweather/main;

    const-string v10, "city"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/picvision/seaweedweather/main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1028
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1031
    .local v4, "id":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cityid"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/picvision/seaweedweather/main$12;->val$position:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1032
    iget-object v9, p0, Lcom/picvision/seaweedweather/main$12;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v9, v9, Lcom/picvision/seaweedweather/main;->citylist:Ljava/util/List;

    iget-object v10, p0, Lcom/picvision/seaweedweather/main$12;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-static {v10}, Lcom/picvision/seaweedweather/main;->access$8(Lcom/picvision/seaweedweather/main;)Landroid/widget/Spinner;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/picvision/seaweedweather/model/Citys;

    invoke-virtual {v9}, Lcom/picvision/seaweedweather/model/Citys;->getCityName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v4, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1033
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 1034
    .local v7, "mess":Landroid/os/Message;
    const/4 v9, 0x5

    iput v9, v7, Landroid/os/Message;->what:I

    .line 1035
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1036
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v9, 0x3

    new-array v8, v9, [Ljava/lang/String;

    .line 1037
    .local v8, "there":[Ljava/lang/String;
    iget v9, p0, Lcom/picvision/seaweedweather/main$12;->val$position:I

    aput-object v4, v8, v9

    .line 1040
    const-string v9, "there"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v7, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1042
    iget-object v9, p0, Lcom/picvision/seaweedweather/main$12;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-static {v9}, Lcom/picvision/seaweedweather/main;->access$3(Lcom/picvision/seaweedweather/main;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1043
    iget-object v9, p0, Lcom/picvision/seaweedweather/main$12;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v9, v9, Lcom/picvision/seaweedweather/main;->alert:Landroid/app/AlertDialog;

    if-eqz v9, :cond_1

    .line 1044
    iget-object v9, p0, Lcom/picvision/seaweedweather/main$12;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1046
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/high16 v9, 0x7f030000

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1047
    .local v1, "city_manager_setting":Landroid/view/View;
    const/high16 v9, 0x7f090000

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 1048
    .local v6, "listview":Landroid/widget/ListView;
    new-instance v9, Lcom/picvision/seaweedweather/views/MyAdapter;

    iget-object v10, p0, Lcom/picvision/seaweedweather/main$12;->this$0:Lcom/picvision/seaweedweather/main;

    iget-object v11, p0, Lcom/picvision/seaweedweather/main$12;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-static {v11}, Lcom/picvision/seaweedweather/main;->access$9(Lcom/picvision/seaweedweather/main;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/picvision/seaweedweather/views/MyAdapter;-><init>(Lcom/picvision/seaweedweather/main;Ljava/util/List;)V

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1049
    iget-object v9, p0, Lcom/picvision/seaweedweather/main$12;->this$0:Lcom/picvision/seaweedweather/main;

    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/picvision/seaweedweather/main$12;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1050
    const v11, 0x7f060015

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1051
    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1052
    const v11, 0x7f060006

    new-instance v12, Lcom/picvision/seaweedweather/main$12$1;

    invoke-direct {v12, p0}, Lcom/picvision/seaweedweather/main$12$1;-><init>(Lcom/picvision/seaweedweather/main$12;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 1060
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v10

    .line 1049
    iput-object v10, v9, Lcom/picvision/seaweedweather/main;->alert:Landroid/app/AlertDialog;

    .line 1062
    .end local v1    # "city_manager_setting":Landroid/view/View;
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "listview":Landroid/widget/ListView;
    :cond_1
    return-void
.end method
