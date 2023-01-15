.class Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$3;
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
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$3;->this$0:Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 184
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$3;->this$0:Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;

    invoke-static {}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->access$0()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->access$1(Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;Ljava/lang/Integer;)Lnet/sharpspot/dinnerin/Classes/DataClass;

    move-result-object v0

    .line 186
    .local v0, "item":Lnet/sharpspot/dinnerin/Classes/DataClass;, "TT;"
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$3;->this$0:Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;

    invoke-virtual {v1, v0, p1}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->OnAllowSave(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$3;->this$0:Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;

    invoke-virtual {v1, v0, p1}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->OnGetDataFromDialog(Lnet/sharpspot/dinnerin/Classes/DataClass;Landroid/content/DialogInterface;)V

    .line 190
    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/DataClass;->Commit()V

    .line 192
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$3;->this$0:Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;

    invoke-virtual {v1}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->RefreshAdapter()V

    .line 195
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->access$2(Ljava/lang/Integer;)V

    .line 196
    return-void
.end method
