.class public abstract Lorg/hermit/android/utils/Ticker$Listener;
.super Ljava/lang/Object;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/utils/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# instance fields
.field private daySecs:I

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/hermit/android/utils/Ticker$Listener;)J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/hermit/android/utils/Ticker$Listener;->time:J

    return-wide v0
.end method

.method static synthetic access$1(Lorg/hermit/android/utils/Ticker$Listener;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/hermit/android/utils/Ticker$Listener;->daySecs:I

    return v0
.end method

.method static synthetic access$2(Lorg/hermit/android/utils/Ticker$Listener;J)V
    .locals 0

    .prologue
    .line 65
    iput-wide p1, p0, Lorg/hermit/android/utils/Ticker$Listener;->time:J

    return-void
.end method

.method static synthetic access$3(Lorg/hermit/android/utils/Ticker$Listener;I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lorg/hermit/android/utils/Ticker$Listener;->daySecs:I

    return-void
.end method


# virtual methods
.method public abstract tick(JI)V
.end method
