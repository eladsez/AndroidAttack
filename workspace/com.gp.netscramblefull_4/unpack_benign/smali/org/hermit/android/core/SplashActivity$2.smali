.class Lorg/hermit/android/core/SplashActivity$2;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hermit/android/core/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hermit/android/core/SplashActivity;


# direct methods
.method constructor <init>(Lorg/hermit/android/core/SplashActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hermit/android/core/SplashActivity$2;->this$0:Lorg/hermit/android/core/SplashActivity;

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/hermit/android/core/SplashActivity$2;->this$0:Lorg/hermit/android/core/SplashActivity;

    invoke-virtual {v0}, Lorg/hermit/android/core/SplashActivity;->finish()V

    .line 107
    return-void
.end method
