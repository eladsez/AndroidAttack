.class Lorg/g_oku/intruderdetection/MyGalleryActivity$4;
.super Ljava/lang/Object;
.source "MyGalleryActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/g_oku/intruderdetection/MyGalleryActivity;->setDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;


# direct methods
.method constructor <init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$4;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 120
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 122
    :pswitch_0
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$4;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    invoke-static {v0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->access$3(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$4;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    invoke-static {v0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->access$4(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c000a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 136
    iget-object v0, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$4;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    invoke-virtual {v0}, Lorg/g_oku/intruderdetection/MyGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/ActionMode;

    .prologue
    .line 143
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "pos"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 156
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/ActionMode;
    .param p2, "arg1"    # Landroid/view/Menu;

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method
