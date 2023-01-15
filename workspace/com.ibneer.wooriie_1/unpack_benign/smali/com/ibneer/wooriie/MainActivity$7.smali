.class Lcom/ibneer/wooriie/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibneer/wooriie/MainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibneer/wooriie/MainActivity;


# direct methods
.method constructor <init>(Lcom/ibneer/wooriie/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ibneer/wooriie/MainActivity$7;->this$0:Lcom/ibneer/wooriie/MainActivity;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/ibneer/wooriie/MainActivity$7;->this$0:Lcom/ibneer/wooriie/MainActivity;

    invoke-virtual {v0}, Lcom/ibneer/wooriie/MainActivity;->finish()V

    .line 416
    return-void
.end method
