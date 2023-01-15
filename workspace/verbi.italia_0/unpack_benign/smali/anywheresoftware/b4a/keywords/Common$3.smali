.class Lanywheresoftware/b4a/keywords/Common$3;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Lanywheresoftware/b4a/BA$B4ARunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/keywords/Common;->StartService(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$Service:Ljava/lang/Object;

.field private final synthetic val$mine:Lanywheresoftware/b4a/BA;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/keywords/Common$3;->val$mine:Lanywheresoftware/b4a/BA;

    iput-object p2, p0, Lanywheresoftware/b4a/keywords/Common$3;->val$Service:Ljava/lang/Object;

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 702
    :try_start_0
    iget-object v1, p0, Lanywheresoftware/b4a/keywords/Common$3;->val$mine:Lanywheresoftware/b4a/BA;

    iget-object v1, v1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    iget-object v2, p0, Lanywheresoftware/b4a/keywords/Common$3;->val$mine:Lanywheresoftware/b4a/BA;

    iget-object v3, p0, Lanywheresoftware/b4a/keywords/Common$3;->val$Service:Ljava/lang/Object;

    invoke-static {v2, v3}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    return-void

    .line 703
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 704
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
