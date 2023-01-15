.class public Lorg/g_oku/intruderdetection/ImageAdapter$CheckableLayout;
.super Landroid/widget/FrameLayout;
.source "ImageAdapter.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/g_oku/intruderdetection/ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckableLayout"
.end annotation


# instance fields
.field private mChecked:Z

.field final synthetic this$0:Lorg/g_oku/intruderdetection/ImageAdapter;


# direct methods
.method public constructor <init>(Lorg/g_oku/intruderdetection/ImageAdapter;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/g_oku/intruderdetection/ImageAdapter$CheckableLayout;->this$0:Lorg/g_oku/intruderdetection/ImageAdapter;

    .line 56
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/g_oku/intruderdetection/ImageAdapter$CheckableLayout;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/g_oku/intruderdetection/ImageAdapter$CheckableLayout;->mChecked:Z

    .line 61
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/g_oku/intruderdetection/ImageAdapter$CheckableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/g_oku/intruderdetection/ImageAdapter$CheckableLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/g_oku/intruderdetection/ImageAdapter$CheckableLayout;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/g_oku/intruderdetection/ImageAdapter$CheckableLayout;->setChecked(Z)V

    .line 70
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
