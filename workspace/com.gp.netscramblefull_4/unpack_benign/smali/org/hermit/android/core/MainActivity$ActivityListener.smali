.class public abstract Lorg/hermit/android/core/MainActivity$ActivityListener;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/core/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActivityListener"
.end annotation


# instance fields
.field private requestCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lorg/hermit/android/core/MainActivity$ActivityListener;->requestCode:I

    .line 58
    return-void
.end method

.method static synthetic access$0(Lorg/hermit/android/core/MainActivity$ActivityListener;)I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/hermit/android/core/MainActivity$ActivityListener;->requestCode:I

    return v0
.end method

.method static synthetic access$1(Lorg/hermit/android/core/MainActivity$ActivityListener;I)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lorg/hermit/android/core/MainActivity$ActivityListener;->requestCode:I

    return-void
.end method


# virtual methods
.method public onActivityCanceled(Landroid/content/Intent;)V
    .locals 0
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 93
    return-void
.end method

.method public onActivityFinished(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    invoke-virtual {p0, p2}, Lorg/hermit/android/core/MainActivity$ActivityListener;->onActivityCanceled(Landroid/content/Intent;)V

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/hermit/android/core/MainActivity$ActivityListener;->onActivityResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 108
    return-void
.end method
