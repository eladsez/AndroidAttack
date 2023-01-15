.class public Lcom/ievyhrdnoniovof/AdActionHandler;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ievyhrdnoniovof/AdActionHandler$2;
    }
.end annotation


# instance fields
.field private synthetic k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/ievyhrdnoniovof/AdView$ACTION;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic m:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ievyhrdnoniovof/AdActionHandler;->k:Ljava/util/HashMap;

    return-void
.end method

.method private synthetic l(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdView$ACTION;->valueOf(Ljava/lang/String;)Lcom/ievyhrdnoniovof/AdView$ACTION;

    move-result-object v0

    sget-object v1, Lcom/ievyhrdnoniovof/AdActionHandler$2;->k:[I

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView$ACTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, v0}, Lcom/ievyhrdnoniovof/AdActionHandler;->l(Landroid/os/Bundle;Lcom/ievyhrdnoniovof/AdView$ACTION;)Lcom/ievyhrdnoniovof/AdPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdPlayer;->playAudio()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, v0}, Lcom/ievyhrdnoniovof/AdActionHandler;->l(Landroid/os/Bundle;Lcom/ievyhrdnoniovof/AdView$ACTION;)Lcom/ievyhrdnoniovof/AdPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdPlayer;->playVideo()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic l(Lcom/ievyhrdnoniovof/AdPlayer;)V
    .locals 1
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdPlayer;

    .prologue
    new-instance v0, Lcom/ievyhrdnoniovof/AdActionHandler$1;

    invoke-direct {v0, p0}, Lcom/ievyhrdnoniovof/AdActionHandler$1;-><init>(Lcom/ievyhrdnoniovof/AdActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/ievyhrdnoniovof/AdPlayer;->setListener(Lcom/ievyhrdnoniovof/AdPlayerListener;)V

    return-void
.end method


# virtual methods
.method l(Landroid/os/Bundle;Lcom/ievyhrdnoniovof/AdView$ACTION;)Lcom/ievyhrdnoniovof/AdPlayer;
    .locals 5
    .param p1, "arg0"    # Landroid/os/Bundle;
    .param p2, "arg1"    # Lcom/ievyhrdnoniovof/AdView$ACTION;

    .prologue
    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ievyhrdnoniovof/AdController$PlayerProperties;

    const-string v1, "expand_dimensions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;

    new-instance v2, Lcom/ievyhrdnoniovof/AdPlayer;

    invoke-direct {v2, p0}, Lcom/ievyhrdnoniovof/AdPlayer;-><init>(Landroid/content/Context;)V

    const-string v3, "expand_url"

    invoke-static {v3, p1}, Lcom/ievyhrdnoniovof/AdUtils;->getData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/ievyhrdnoniovof/AdPlayer;->setPlayData(Lcom/ievyhrdnoniovof/AdController$PlayerProperties;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v1, v0

    move-object v0, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/ievyhrdnoniovof/AdPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdActionHandler;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdActionHandler;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/ievyhrdnoniovof/AdActionHandler;->l(Lcom/ievyhrdnoniovof/AdPlayer;)V

    return-object v2

    :cond_0
    iget v3, v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->M:I

    iget v4, v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->m:I

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->E:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, v1, Lcom/ievyhrdnoniovof/AdController$Dimensions;->k:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move-object v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ievyhrdnoniovof/AdActionHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ievyhrdnoniovof/AdActionHandler;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdActionHandler;->m:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdActionHandler;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/ievyhrdnoniovof/AdActionHandler;->setContentView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/ievyhrdnoniovof/AdActionHandler;->l(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdActionHandler;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v3, Lcom/ievyhrdnoniovof/AdActionHandler$2;->k:[I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ievyhrdnoniovof/AdView$ACTION;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdView$ACTION;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ievyhrdnoniovof/AdPlayer;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdPlayer;->releasePlayer()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
