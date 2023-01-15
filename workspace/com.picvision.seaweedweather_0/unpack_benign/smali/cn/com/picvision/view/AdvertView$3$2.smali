.class Lcn/com/picvision/view/AdvertView$3$2;
.super Ljava/lang/Object;
.source "AdvertView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/picvision/view/AdvertView$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/com/picvision/view/AdvertView$3;

.field private final synthetic val$adwords:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcn/com/picvision/view/AdvertView$3;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView$3$2;->this$1:Lcn/com/picvision/view/AdvertView$3;

    iput-object p2, p0, Lcn/com/picvision/view/AdvertView$3$2;->val$adwords:Ljava/util/ArrayList;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 549
    const/4 v10, 0x0

    .line 550
    .local v10, "times":I
    const/4 v8, 0x4

    .line 551
    .local v8, "oneTime":I
    const/4 v9, 0x0

    .line 552
    .local v9, "textPosition":I
    :goto_0
    iget-object v11, p0, Lcn/com/picvision/view/AdvertView$3$2;->this$1:Lcn/com/picvision/view/AdvertView$3;

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v11

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$24(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/util/TextThread;

    move-result-object v11

    iget-boolean v11, v11, Lcn/com/picvision/util/TextThread;->isStart:Z

    if-nez v11, :cond_0

    .line 591
    return-void

    .line 553
    :cond_0
    const/4 v2, 0x0

    .line 554
    .local v2, "circle":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/4 v11, 0x4

    if-ge v6, v11, :cond_1

    iget-object v11, p0, Lcn/com/picvision/view/AdvertView$3$2;->this$1:Lcn/com/picvision/view/AdvertView$3;

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v11

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$24(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/util/TextThread;

    move-result-object v11

    iget-boolean v11, v11, Lcn/com/picvision/util/TextThread;->isStart:Z

    if-nez v11, :cond_2

    .line 588
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 556
    :cond_2
    iget-object v11, p0, Lcn/com/picvision/view/AdvertView$3$2;->val$adwords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 557
    .local v0, "adLength":I
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 558
    .local v7, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 559
    .local v1, "bundle":Landroid/os/Bundle;
    rem-int/lit8 v11, v2, 0x4

    iput v11, v7, Landroid/os/Message;->what:I

    .line 561
    mul-int/lit8 v11, v10, 0x4

    add-int/2addr v11, v6

    rem-int/lit8 v11, v11, 0x4

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 562
    if-nez v10, :cond_4

    if-nez v6, :cond_4

    .line 563
    :cond_3
    rem-int v3, v9, v0

    .line 565
    .local v3, "current":I
    add-int/lit8 v9, v9, 0x1

    .line 566
    const-string v12, "one"

    .line 567
    iget-object v11, p0, Lcn/com/picvision/view/AdvertView$3$2;->val$adwords:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 566
    invoke-virtual {v1, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .end local v3    # "current":I
    :cond_4
    if-nez v6, :cond_5

    .line 571
    rem-int v4, v9, v0

    .line 573
    .local v4, "current1":I
    add-int/lit8 v9, v9, 0x1

    .line 574
    const-string v12, "two"

    .line 575
    iget-object v11, p0, Lcn/com/picvision/view/AdvertView$3$2;->val$adwords:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 574
    invoke-virtual {v1, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .end local v4    # "current1":I
    :cond_5
    invoke-virtual {v7, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 578
    iget-object v11, p0, Lcn/com/picvision/view/AdvertView$3$2;->this$1:Lcn/com/picvision/view/AdvertView$3;

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v11

    invoke-static {v11}, Lcn/com/picvision/view/AdvertView;->access$25(Lcn/com/picvision/view/AdvertView;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 580
    const-wide/16 v11, 0x3e8

    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 585
    const/4 v7, 0x0

    .line 554
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 581
    :catch_0
    move-exception v5

    .line 582
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
