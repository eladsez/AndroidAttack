.class Lnet/sharpspot/dinnerin/CustomDialog$Builder$2;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sharpspot/dinnerin/CustomDialog$Builder;->create()Lnet/sharpspot/dinnerin/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sharpspot/dinnerin/CustomDialog$Builder;

.field private final synthetic val$dialog:Lnet/sharpspot/dinnerin/CustomDialog;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/CustomDialog$Builder;Lnet/sharpspot/dinnerin/CustomDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder$2;->this$1:Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    iput-object p2, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder$2;->val$dialog:Lnet/sharpspot/dinnerin/CustomDialog;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v0, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder$2;->this$1:Lnet/sharpspot/dinnerin/CustomDialog$Builder;

    invoke-static {v0}, Lnet/sharpspot/dinnerin/CustomDialog$Builder;->access$1(Lnet/sharpspot/dinnerin/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lnet/sharpspot/dinnerin/CustomDialog$Builder$2;->val$dialog:Lnet/sharpspot/dinnerin/CustomDialog;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 238
    return-void
.end method
