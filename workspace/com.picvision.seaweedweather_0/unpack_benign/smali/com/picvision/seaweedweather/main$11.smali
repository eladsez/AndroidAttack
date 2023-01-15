.class Lcom/picvision/seaweedweather/main$11;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/main;->CitysSpinner(I)V
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
.field final synthetic this$0:Lcom/picvision/seaweedweather/main;


# direct methods
.method constructor <init>(Lcom/picvision/seaweedweather/main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$11;->this$0:Lcom/picvision/seaweedweather/main;

    .line 991
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
    .line 997
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/picvision/seaweedweather/main$11;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-static {v1}, Lcom/picvision/seaweedweather/main;->access$5(Lcom/picvision/seaweedweather/main;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 999
    .local v0, "pos2":I
    iget-object v1, p0, Lcom/picvision/seaweedweather/main$11;->this$0:Lcom/picvision/seaweedweather/main;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/picvision/seaweedweather/main$11;->this$0:Lcom/picvision/seaweedweather/main;

    const v4, 0x1090008

    iget-object v5, p0, Lcom/picvision/seaweedweather/main$11;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-virtual {v5, v0}, Lcom/picvision/seaweedweather/main;->getCitys(I)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {v1, v2}, Lcom/picvision/seaweedweather/main;->access$6(Lcom/picvision/seaweedweather/main;Landroid/widget/ArrayAdapter;)V

    .line 1000
    iget-object v1, p0, Lcom/picvision/seaweedweather/main$11;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-static {v1}, Lcom/picvision/seaweedweather/main;->access$7(Lcom/picvision/seaweedweather/main;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1001
    iget-object v1, p0, Lcom/picvision/seaweedweather/main$11;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-static {v1}, Lcom/picvision/seaweedweather/main;->access$8(Lcom/picvision/seaweedweather/main;)Landroid/widget/Spinner;

    move-result-object v1

    iget-object v2, p0, Lcom/picvision/seaweedweather/main$11;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-static {v2}, Lcom/picvision/seaweedweather/main;->access$7(Lcom/picvision/seaweedweather/main;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1004
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
    .line 1009
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
