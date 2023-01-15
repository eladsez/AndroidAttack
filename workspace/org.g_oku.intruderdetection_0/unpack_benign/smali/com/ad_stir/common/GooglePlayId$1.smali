.class final Lcom/ad_stir/common/GooglePlayId$1;
.super Ljava/lang/Object;
.source "GooglePlayId.java"

# interfaces
.implements Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad_stir/common/GooglePlayId;->getGooglePlayId(Landroid/content/Context;Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;


# direct methods
.method constructor <init>(Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ad_stir/common/GooglePlayId$1;->val$callback:Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnGooglePlayId(Ljava/lang/String;)V
    .locals 2
    .param p1, "gid"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ad_stir/common/GooglePlayId$1;->val$callback:Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;

    invoke-static {p1}, Lcom/ad_stir/common/GooglePlayId;->encodeAES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;->returnGooglePlayId(Ljava/lang/String;)V

    .line 57
    return-void
.end method
