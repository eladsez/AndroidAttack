.class Lanywheresoftware/b4a/objects/ListViewWrapper$2;
.super Ljava/lang/Object;
.source "ListViewWrapper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/objects/ListViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/objects/ListViewWrapper;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;

.field private final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/objects/ListViewWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$2;->this$0:Lanywheresoftware/b4a/objects/ListViewWrapper;

    iput-object p2, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$2;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$2;->val$eventName:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 68
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$2;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$2;->this$0:Lanywheresoftware/b4a/objects/ListViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$2;->val$eventName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_itemlongclick"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 69
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$2;->this$0:Lanywheresoftware/b4a/objects/ListViewWrapper;

    invoke-virtual {v4}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lanywheresoftware/b4a/objects/ListViewWrapper$2;
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v4, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {v4, p3}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 68
    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lanywheresoftware/b4a/BA;->raiseEventFromUI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return v6
.end method
