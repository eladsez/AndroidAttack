.class Lcom/app/my/dream/valentinesdaycards/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/my/dream/valentinesdaycards/MainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 293
    iput-object p1, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$4;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/app/my/dream/valentinesdaycards/MainActivity$4;->this$0:Lcom/app/my/dream/valentinesdaycards/MainActivity;

    invoke-virtual {v0}, Lcom/app/my/dream/valentinesdaycards/MainActivity;->finish()V

    .line 299
    return-void
.end method
