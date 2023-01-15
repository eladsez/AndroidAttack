.class Lcom/ievyhrdnoniovof/AdView$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ievyhrdnoniovof/AdPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdView;->playVideoImpl(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdView;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView$8;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$8;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$8;->k:Lcom/ievyhrdnoniovof/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdView;->setVisibility(I)V

    return-void
.end method

.method public onError()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdView$8;->onComplete()V

    return-void
.end method

.method public onPrepared()V
    .locals 0

    return-void
.end method
