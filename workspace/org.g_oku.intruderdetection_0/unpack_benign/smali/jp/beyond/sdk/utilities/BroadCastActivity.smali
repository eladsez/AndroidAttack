.class public Ljp/beyond/sdk/utilities/BroadCastActivity;
.super Landroid/app/Activity;
.source "BroadCastActivity.java"


# instance fields
.field private mConnReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    new-instance v0, Ljp/beyond/sdk/utilities/BroadCastActivity$1;

    invoke-direct {v0, p0}, Ljp/beyond/sdk/utilities/BroadCastActivity$1;-><init>(Ljp/beyond/sdk/utilities/BroadCastActivity;)V

    iput-object v0, p0, Ljp/beyond/sdk/utilities/BroadCastActivity;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 13
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    iget-object v0, p0, Ljp/beyond/sdk/utilities/BroadCastActivity;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0, v1}, Ljp/beyond/sdk/utilities/BroadCastActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 21
    return-void
.end method
