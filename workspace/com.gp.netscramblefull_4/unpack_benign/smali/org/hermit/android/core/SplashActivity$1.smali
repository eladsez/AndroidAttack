.class Lorg/hermit/android/core/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lorg/hermit/android/core/SplashActivity$1;->this$0:Lorg/hermit/android/core/SplashActivity;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/hermit/android/core/SplashActivity$1;->this$0:Lorg/hermit/android/core/SplashActivity;

    invoke-virtual {v0}, Lorg/hermit/android/core/SplashActivity;->finish()V

    .line 99
    return-void
.end method
