.class public abstract Lanywheresoftware/b4a/BA$WarningEngine;
.super Ljava/lang/Object;
.source "BA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/BA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WarningEngine"
.end annotation


# static fields
.field public static final FULLSCREEN_MISMATCH:I = 0x3ec

.field public static final OBJECT_ALREADY_INITIALIZED:I = 0x3eb

.field public static final SAME_OBJECT_ADDED_TO_LIST:I = 0x3ea

.field public static final ZERO_SIZE_PANEL:I = 0x3e9


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static warn(I)V
    .locals 1
    .param p0, "warning"    # I

    .prologue
    .line 746
    sget-object v0, Lanywheresoftware/b4a/BA;->warningEngine:Lanywheresoftware/b4a/BA$WarningEngine;

    if-eqz v0, :cond_0

    .line 747
    sget-object v0, Lanywheresoftware/b4a/BA;->warningEngine:Lanywheresoftware/b4a/BA$WarningEngine;

    invoke-virtual {v0, p0}, Lanywheresoftware/b4a/BA$WarningEngine;->warnImpl(I)V

    .line 748
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract checkFullScreenInLayout(ZZ)V
.end method

.method protected abstract warnImpl(I)V
.end method
