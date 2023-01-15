.class Lcom/app/my/dream/valentinesdaycards/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 149
    iput-object p1, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$3;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v2, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$3;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    iget-object v2, v2, Lcom/app/my/dream/valentinesdaycards/MainActivity;->tg:Landroid/media/ToneGenerator;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 154
    iget-object v2, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$3;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    iget-object v3, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$3;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    iget-object v3, v3, Lcom/app/my/dream/valentinesdaycards/MainActivity;->im1:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->getLocalBitmapuri(Landroid/widget/ImageView;)Landroid/net/Uri;

    move-result-object v0

    .line 156
    .local v0, "bmpuri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "in":Landroid/content/Intent;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v2, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$3;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    const-string v3, "Share Image"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    .end local v1    # "in":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
