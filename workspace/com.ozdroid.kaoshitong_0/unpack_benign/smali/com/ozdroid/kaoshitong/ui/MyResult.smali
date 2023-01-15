.class public Lcom/ozdroid/kaoshitong/ui/MyResult;
.super Ljava/lang/Object;
.source "MyResult.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ozdroid/kaoshitong/ui/MyResult$ChannelAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dlg:Landroid/app/Dialog;

.field private factory:Landroid/view/LayoutInflater;

.field private handler:Lcom/ozdroid/kaoshitong/ui/SinpperListener;

.field private lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/ozdroid/kaoshitong/ui/MyResult$ChannelAdapter;

.field private mCancel:Landroid/widget/Button;

.field private mClose:Landroid/widget/Button;

.field private mListView:Landroid/widget/GridView;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->context:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->factory:Landroid/view/LayoutInflater;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/ozdroid/kaoshitong/ui/MyResult;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->lists:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ozdroid/kaoshitong/ui/MyResult;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public Create(Ljava/lang/String;Lcom/ozdroid/kaoshitong/ui/SinpperListener;Ljava/util/List;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/ozdroid/kaoshitong/ui/SinpperListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ozdroid/kaoshitong/ui/SinpperListener;",
            "Ljava/util/List",
            "<",
            "Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;>;"
    iput-object p3, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->lists:Ljava/util/List;

    .line 38
    iput-object p2, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->handler:Lcom/ozdroid/kaoshitong/ui/SinpperListener;

    .line 41
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->context:Landroid/content/Context;

    const/high16 v3, 0x7f070000

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->dlg:Landroid/app/Dialog;

    .line 42
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->factory:Landroid/view/LayoutInflater;

    const v2, 0x7f03000c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "menuView":Landroid/view/View;
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->dlg:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 45
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->dlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 47
    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->mText:Landroid/widget/TextView;

    .line 48
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->mClose:Landroid/widget/Button;

    .line 51
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->mClose:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->mListView:Landroid/widget/GridView;

    .line 54
    new-instance v1, Lcom/ozdroid/kaoshitong/ui/MyResult$ChannelAdapter;

    invoke-direct {v1, p0}, Lcom/ozdroid/kaoshitong/ui/MyResult$ChannelAdapter;-><init>(Lcom/ozdroid/kaoshitong/ui/MyResult;)V

    iput-object v1, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->mAdapter:Lcom/ozdroid/kaoshitong/ui/MyResult$ChannelAdapter;

    .line 55
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->mListView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->mAdapter:Lcom/ozdroid/kaoshitong/ui/MyResult$ChannelAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    iget-object v1, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->mListView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->handler:Lcom/ozdroid/kaoshitong/ui/SinpperListener;

    .line 70
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 71
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->mCancel:Landroid/widget/Button;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->mClose:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->handler:Lcom/ozdroid/kaoshitong/ui/SinpperListener;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->handler:Lcom/ozdroid/kaoshitong/ui/SinpperListener;

    invoke-interface {v0}, Lcom/ozdroid/kaoshitong/ui/SinpperListener;->OnSCancelClick()V

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/ui/MyResult;->dismiss()V

    .line 66
    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 75
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->handler:Lcom/ozdroid/kaoshitong/ui/SinpperListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/ui/MyResult;->handler:Lcom/ozdroid/kaoshitong/ui/SinpperListener;

    invoke-interface {v0, p3}, Lcom/ozdroid/kaoshitong/ui/SinpperListener;->OnSubmitClick(I)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/ozdroid/kaoshitong/ui/MyResult;->dismiss()V

    .line 79
    return-void
.end method
