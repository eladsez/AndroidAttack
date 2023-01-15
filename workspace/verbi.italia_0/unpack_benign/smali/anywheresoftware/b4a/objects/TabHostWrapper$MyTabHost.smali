.class public Lanywheresoftware/b4a/objects/TabHostWrapper$MyTabHost;
.super Landroid/widget/TabHost;
.source "TabHostWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/TabHostWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyTabHost"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 197
    return-void
.end method
