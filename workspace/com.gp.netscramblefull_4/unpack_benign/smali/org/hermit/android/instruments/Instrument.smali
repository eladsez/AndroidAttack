.class public Lorg/hermit/android/instruments/Instrument;
.super Ljava/lang/Object;
.source "Instrument.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "instrument"


# instance fields
.field private final parentSurface:Lorg/hermit/android/core/SurfaceRunner;


# direct methods
.method public constructor <init>(Lorg/hermit/android/core/SurfaceRunner;)V
    .locals 0
    .param p1, "parent"    # Lorg/hermit/android/core/SurfaceRunner;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/hermit/android/instruments/Instrument;->parentSurface:Lorg/hermit/android/core/SurfaceRunner;

    .line 46
    return-void
.end method


# virtual methods
.method public appStart()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public appStop()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method protected doUpdate(J)V
    .locals 0
    .param p1, "now"    # J

    .prologue
    .line 96
    return-void
.end method

.method protected getSurface()Lorg/hermit/android/core/SurfaceRunner;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/hermit/android/instruments/Instrument;->parentSurface:Lorg/hermit/android/core/SurfaceRunner;

    return-object v0
.end method

.method public measureStart()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public measureStop()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method protected restoreState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 135
    return-void
.end method

.method protected saveState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 124
    return-void
.end method
