.class Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$6;
.super Ljava/lang/Object;
.source "ListManagementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$6;->this$0:Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->access$2(Ljava/lang/Integer;)V

    .line 227
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 228
    return-void
.end method
