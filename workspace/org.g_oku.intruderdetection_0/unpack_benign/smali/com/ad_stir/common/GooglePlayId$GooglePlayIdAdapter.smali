.class abstract Lcom/ad_stir/common/GooglePlayId$GooglePlayIdAdapter;
.super Ljava/lang/Object;
.source "GooglePlayId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad_stir/common/GooglePlayId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "GooglePlayIdAdapter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ad_stir/common/GooglePlayId$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ad_stir/common/GooglePlayId$1;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/ad_stir/common/GooglePlayId$GooglePlayIdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getId(Landroid/content/Context;)Ljava/lang/String;
.end method
