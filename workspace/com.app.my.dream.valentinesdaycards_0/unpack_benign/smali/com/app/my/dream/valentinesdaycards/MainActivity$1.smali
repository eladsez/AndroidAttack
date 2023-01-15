.class Lcom/app/my/dream/valentinesdaycards/MainActivity$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/my/dream/valentinesdaycards/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;


# direct methods
.method constructor <init>(Lcom/app/my/dream/valentinesdaycards/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/app/my/dream/valentinesdaycards/MainActivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$1;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$1;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    invoke-static {v0}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->access$000(Lcom/app/my/dream/valentinesdaycards/MainActivity;)V

    .line 79
    return-void
.end method
