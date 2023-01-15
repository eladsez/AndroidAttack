.class Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$5;
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
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$5;->this$0:Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 218
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$5;->this$0:Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;

    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity$5;->this$0:Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->GetListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->access$0()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/DataClass;

    invoke-virtual {v1, v0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->DeleteItem(Lnet/sharpspot/dinnerin/Classes/DataClass;)V

    .line 219
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/sharpspot/dinnerin/Activities/ListManagementActivity;->access$2(Ljava/lang/Integer;)V

    .line 220
    return-void
.end method
