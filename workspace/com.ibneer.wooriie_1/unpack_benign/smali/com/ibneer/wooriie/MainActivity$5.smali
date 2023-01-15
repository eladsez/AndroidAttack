.class Lcom/ibneer/wooriie/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibneer/wooriie/MainActivity;->loadpage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibneer/wooriie/MainActivity;


# direct methods
.method constructor <init>(Lcom/ibneer/wooriie/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ibneer/wooriie/MainActivity$5;->this$0:Lcom/ibneer/wooriie/MainActivity;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 292
    iget-object v2, p0, Lcom/ibneer/wooriie/MainActivity$5;->this$0:Lcom/ibneer/wooriie/MainActivity;

    const-string v3, "pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/ibneer/wooriie/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 294
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "serverip"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "home_url":Ljava/lang/String;
    iget-object v2, p0, Lcom/ibneer/wooriie/MainActivity$5;->this$0:Lcom/ibneer/wooriie/MainActivity;

    invoke-static {v2}, Lcom/ibneer/wooriie/MainActivity;->access$0(Lcom/ibneer/wooriie/MainActivity;)Lorg/apache/cordova/CordovaWebView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/cordova/CordovaWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/mobile/Main.php"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/ibneer/wooriie/MainActivity$5;->this$0:Lcom/ibneer/wooriie/MainActivity;

    new-instance v3, Lcom/google/android/gcm/server/Sender;

    const-string v4, "AIzaSyB3_c3Aka5ScqR-8s9nmdQkkCz5uwMHJrs"

    invoke-direct {v3, v4}, Lcom/google/android/gcm/server/Sender;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/ibneer/wooriie/MainActivity;->sender:Lcom/google/android/gcm/server/Sender;

    .line 300
    iget-object v2, p0, Lcom/ibneer/wooriie/MainActivity$5;->this$0:Lcom/ibneer/wooriie/MainActivity;

    iget-object v3, p0, Lcom/ibneer/wooriie/MainActivity$5;->this$0:Lcom/ibneer/wooriie/MainActivity;

    invoke-static {v3}, Lcom/ibneer/wooriie/MainActivity;->access$1(Lcom/ibneer/wooriie/MainActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    new-instance v4, Landroid/content/IntentFilter;

    sget-object v5, Lcom/ibneer/wooriie/BasicInfo;->GCM_INTENT_FILLTER:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/ibneer/wooriie/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 301
    iget-object v2, p0, Lcom/ibneer/wooriie/MainActivity$5;->this$0:Lcom/ibneer/wooriie/MainActivity;

    invoke-static {v2}, Lcom/ibneer/wooriie/MainActivity;->access$2(Lcom/ibneer/wooriie/MainActivity;)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/ibneer/wooriie/MainActivity$5;->this$0:Lcom/ibneer/wooriie/MainActivity;

    invoke-virtual {v2}, Lcom/ibneer/wooriie/MainActivity;->resetpage()V

    goto :goto_0
.end method
