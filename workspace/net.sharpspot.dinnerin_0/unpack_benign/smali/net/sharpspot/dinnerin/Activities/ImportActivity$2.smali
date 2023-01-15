.class Lnet/sharpspot/dinnerin/Activities/ImportActivity$2;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sharpspot/dinnerin/Activities/ImportActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/ImportActivity;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Activities/ImportActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$2;->this$0:Lnet/sharpspot/dinnerin/Activities/ImportActivity;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ImportActivity$2;->this$0:Lnet/sharpspot/dinnerin/Activities/ImportActivity;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Activities/ImportActivity;->finish()V

    .line 411
    return-void
.end method
