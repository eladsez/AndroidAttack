.class Lanywheresoftware/b4a/keywords/Common$4;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/keywords/Common;->StartService(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x0

    sput-boolean v0, Lanywheresoftware/b4a/Msgbox;->isDismissing:Z

    .line 714
    return-void
.end method
