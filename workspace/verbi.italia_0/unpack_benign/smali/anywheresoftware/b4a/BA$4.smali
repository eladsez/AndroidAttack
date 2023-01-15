.class Lanywheresoftware/b4a/BA$4;
.super Ljava/lang/Object;
.source "BA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/BA;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/BA;

.field private final synthetic val$i:Lanywheresoftware/b4a/IOnActivityResult;

.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/BA;Lanywheresoftware/b4a/IOnActivityResult;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/BA$4;->this$0:Lanywheresoftware/b4a/BA;

    iput-object p2, p0, Lanywheresoftware/b4a/BA$4;->val$i:Lanywheresoftware/b4a/IOnActivityResult;

    iput p3, p0, Lanywheresoftware/b4a/BA$4;->val$result:I

    iput-object p4, p0, Lanywheresoftware/b4a/BA$4;->val$intent:Landroid/content/Intent;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 477
    :try_start_0
    iget-object v1, p0, Lanywheresoftware/b4a/BA$4;->val$i:Lanywheresoftware/b4a/IOnActivityResult;

    iget v2, p0, Lanywheresoftware/b4a/BA$4;->val$result:I

    iget-object v3, p0, Lanywheresoftware/b4a/BA$4;->val$intent:Landroid/content/Intent;

    invoke-interface {v1, v2, v3}, Lanywheresoftware/b4a/IOnActivityResult;->ResultArrived(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
