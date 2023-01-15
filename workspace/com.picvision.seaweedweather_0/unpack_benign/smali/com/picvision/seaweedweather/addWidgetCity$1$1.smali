.class Lcom/picvision/seaweedweather/addWidgetCity$1$1;
.super Ljava/lang/Object;
.source "addWidgetCity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/addWidgetCity$1;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/picvision/seaweedweather/addWidgetCity$1;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/addWidgetCity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/addWidgetCity$1$1;->this$1:Lcom/picvision/seaweedweather/addWidgetCity$1;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v5, "widgetCityId"

    .line 76
    iget-object v1, p0, Lcom/picvision/seaweedweather/addWidgetCity$1$1;->this$1:Lcom/picvision/seaweedweather/addWidgetCity$1;

    invoke-static {v1}, Lcom/picvision/seaweedweather/addWidgetCity$1;->access$0(Lcom/picvision/seaweedweather/addWidgetCity$1;)Lcom/picvision/seaweedweather/addWidgetCity;

    move-result-object v1

    iget-object v2, p0, Lcom/picvision/seaweedweather/addWidgetCity$1$1;->this$1:Lcom/picvision/seaweedweather/addWidgetCity$1;

    invoke-static {v2}, Lcom/picvision/seaweedweather/addWidgetCity$1;->access$0(Lcom/picvision/seaweedweather/addWidgetCity$1;)Lcom/picvision/seaweedweather/addWidgetCity;

    move-result-object v2

    invoke-static {v2}, Lcom/picvision/seaweedweather/addWidgetCity;->access$3(Lcom/picvision/seaweedweather/addWidgetCity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/picvision/seaweedweather/addWidgetCity;->access$4(Lcom/picvision/seaweedweather/addWidgetCity;I)V

    .line 77
    iget-object v1, p0, Lcom/picvision/seaweedweather/addWidgetCity$1$1;->this$1:Lcom/picvision/seaweedweather/addWidgetCity$1;

    invoke-static {v1}, Lcom/picvision/seaweedweather/addWidgetCity$1;->access$0(Lcom/picvision/seaweedweather/addWidgetCity$1;)Lcom/picvision/seaweedweather/addWidgetCity;

    move-result-object v1

    const-string v2, "widgetCityId"

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Lcom/picvision/seaweedweather/addWidgetCity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "widgetCityId"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/picvision/seaweedweather/addWidgetCity$1$1;->this$1:Lcom/picvision/seaweedweather/addWidgetCity$1;

    invoke-static {v3}, Lcom/picvision/seaweedweather/addWidgetCity$1;->access$0(Lcom/picvision/seaweedweather/addWidgetCity$1;)Lcom/picvision/seaweedweather/addWidgetCity;

    move-result-object v3

    invoke-static {v3}, Lcom/picvision/seaweedweather/addWidgetCity;->access$5(Lcom/picvision/seaweedweather/addWidgetCity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/picvision/seaweedweather/addWidgetCity$1$1;->this$1:Lcom/picvision/seaweedweather/addWidgetCity$1;

    invoke-static {v4}, Lcom/picvision/seaweedweather/addWidgetCity$1;->access$0(Lcom/picvision/seaweedweather/addWidgetCity$1;)Lcom/picvision/seaweedweather/addWidgetCity;

    move-result-object v4

    invoke-static {v4}, Lcom/picvision/seaweedweather/addWidgetCity;->access$6(Lcom/picvision/seaweedweather/addWidgetCity;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/picvision/seaweedweather/addWidgetCity$1$1;
    check-cast p0, Lcom/picvision/seaweedweather/model/Citys;

    invoke-virtual {p0}, Lcom/picvision/seaweedweather/model/Citys;->getCityId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
