.class Lnet/sharpspot/dinnerin/Activities/BrowseActivity$1;
.super Ljava/lang/Object;
.source "BrowseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sharpspot/dinnerin/Activities/BrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/BrowseActivity;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Activities/BrowseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity$1;->this$0:Lnet/sharpspot/dinnerin/Activities/BrowseActivity;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sharpspot/dinnerin/Classes/TagClass;

    .line 90
    .local v0, "tag":Lnet/sharpspot/dinnerin/Classes/TagClass;
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity$1;->this$0:Lnet/sharpspot/dinnerin/Activities/BrowseActivity;

    invoke-static {v1, v0}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->access$0(Lnet/sharpspot/dinnerin/Activities/BrowseActivity;Lnet/sharpspot/dinnerin/Classes/TagClass;)V

    .line 92
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity$1;->this$0:Lnet/sharpspot/dinnerin/Activities/BrowseActivity;

    invoke-static {v1}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->access$1(Lnet/sharpspot/dinnerin/Activities/BrowseActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 94
    iget-object v1, p0, Lnet/sharpspot/dinnerin/Activities/BrowseActivity$1;->this$0:Lnet/sharpspot/dinnerin/Activities/BrowseActivity;

    invoke-virtual {v0}, Lnet/sharpspot/dinnerin/Classes/TagClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sharpspot/dinnerin/Activities/BrowseActivity;->access$2(Lnet/sharpspot/dinnerin/Activities/BrowseActivity;Ljava/lang/String;)V

    .line 95
    return-void
.end method
