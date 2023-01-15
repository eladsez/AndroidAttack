.class public Lcom/ibneer/wooriie/showMsg;
.super Landroid/app/Activity;
.source "showMsg.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/ibneer/wooriie/showMsg;->requestWindowFeature(I)Z

    .line 28
    invoke-virtual {p0}, Lcom/ibneer/wooriie/showMsg;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v9, 0x280000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 32
    invoke-virtual {p0}, Lcom/ibneer/wooriie/showMsg;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 33
    .local v1, "bun":Landroid/os/Bundle;
    const-string v8, "title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 34
    .local v6, "title":Ljava/lang/String;
    const-string v8, "msg"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "msg":Ljava/lang/String;
    const-string v8, "url"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 38
    .local v7, "url":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string v8, "\ub2eb\uae30"

    new-instance v9, Lcom/ibneer/wooriie/showMsg$1;

    invoke-direct {v9, p0}, Lcom/ibneer/wooriie/showMsg$1;-><init>(Lcom/ibneer/wooriie/showMsg;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    const-string v8, "\ubcf4\uae30"

    new-instance v9, Lcom/ibneer/wooriie/showMsg$2;

    invoke-direct {v9, p0}, Lcom/ibneer/wooriie/showMsg$2;-><init>(Lcom/ibneer/wooriie/showMsg;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    const/high16 v8, 0x7f020000

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 74
    invoke-virtual {p0}, Lcom/ibneer/wooriie/showMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    const/16 v10, 0x3a98

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 75
    .local v2, "defTimeOut":I
    new-instance v4, Lcom/ibneer/wooriie/showMsg$3;

    invoke-direct {v4, p0}, Lcom/ibneer/wooriie/showMsg$3;-><init>(Lcom/ibneer/wooriie/showMsg;)V

    .line 82
    .local v4, "task":Ljava/util/TimerTask;
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    .line 83
    .local v5, "timer":Ljava/util/Timer;
    int-to-long v8, v2

    invoke-virtual {v5, v4, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 85
    return-void
.end method
