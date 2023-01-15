.class Lcom/picvision/seaweedweather/main$2;
.super Ljava/lang/Object;
.source "main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/main;->inintWeather()V
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
    iput-object p1, p0, Lcom/picvision/seaweedweather/main$2;->this$0:Lcom/picvision/seaweedweather/main;

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 551
    iget-object v4, p0, Lcom/picvision/seaweedweather/main$2;->this$0:Lcom/picvision/seaweedweather/main;

    const-string v5, "checkedId"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/picvision/seaweedweather/main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 552
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v4, "Id"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 553
    .local v1, "id":I
    if-eqz v1, :cond_0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 554
    :cond_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 555
    .local v2, "mess":Landroid/os/Message;
    const/16 v4, 0xa

    iput v4, v2, Landroid/os/Message;->what:I

    .line 556
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 557
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "AgeId"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 558
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 559
    iget-object v4, p0, Lcom/picvision/seaweedweather/main$2;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-static {v4}, Lcom/picvision/seaweedweather/main;->access$3(Lcom/picvision/seaweedweather/main;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "mess":Landroid/os/Message;
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v4, p0, Lcom/picvision/seaweedweather/main$2;->this$0:Lcom/picvision/seaweedweather/main;

    invoke-virtual {v4}, Lcom/picvision/seaweedweather/main;->age_setting()V

    goto :goto_0
.end method
