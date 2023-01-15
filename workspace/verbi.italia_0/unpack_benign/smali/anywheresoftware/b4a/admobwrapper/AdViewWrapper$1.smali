.class Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;
.super Ljava/lang/Object;
.source "AdViewWrapper.java"

# interfaces
.implements Lcom/google/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->Initialize2(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;

.field private final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;->this$0:Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;

    iput-object p2, p0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;->val$eventName:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 7
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 94
    iget-object v0, p0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;->this$0:Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_adscreendismissed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v5, v3

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lanywheresoftware/b4a/BA;->raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 6
    .param p1, "ad"    # Lcom/google/ads/Ad;
    .param p2, "e"    # Lcom/google/ads/AdRequest$ErrorCode;

    .prologue
    .line 86
    iget-object v0, p0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;->this$0:Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_failedtoreceivead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/google/ads/AdRequest$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 99
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 7
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 102
    iget-object v0, p0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;->this$0:Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_presentscreen"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v5, v3

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lanywheresoftware/b4a/BA;->raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 4
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 90
    iget-object v0, p0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;->this$0:Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lanywheresoftware/b4a/admobwrapper/AdViewWrapper$1;->val$eventName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_receivead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method
