.class Lanywheresoftware/b4a/keywords/Common$6;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$B4ARunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/keywords/Common;->CallSubDelayed4(Lanywheresoftware/b4a/BA;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/keywords/Common$6;->val$runnable:Ljava/lang/Runnable;

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lanywheresoftware/b4a/keywords/Common$6;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 972
    return-void
.end method
