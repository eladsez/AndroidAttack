.class public Ljp/beyond/beadsdkwrapper/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ShowToast"
    }
.end annotation


# instance fields
.field adShown:Z

.field k:I

.field private mBead300:Ljp/beyond/sdk/Bead;

.field private mBead480:Ljp/beyond/sdk/Bead;

.field private mBeadIcon:Ljp/beyond/sdk/Bead;

.field myTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    iput-object v1, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead480:Ljp/beyond/sdk/Bead;

    .line 22
    iput-object v1, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBeadIcon:Ljp/beyond/sdk/Bead;

    .line 25
    iput-object v1, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead300:Ljp/beyond/sdk/Bead;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->adShown:Z

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->k:I

    .line 29
    iput-object v1, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->myTimer:Ljava/util/Timer;

    .line 18
    return-void
.end method

.method static synthetic access$0(Ljp/beyond/beadsdkwrapper/MainActivity;)Ljp/beyond/sdk/Bead;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead480:Ljp/beyond/sdk/Bead;

    return-object v0
.end method

.method static synthetic access$1(Ljp/beyond/beadsdkwrapper/MainActivity;)Ljp/beyond/sdk/Bead;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead300:Ljp/beyond/sdk/Bead;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 125
    const-string v0, "landscape"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    const-string v0, "portrait"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v1, Ljp/beyond/beadsdkwrapper/R$layout;->activity_main:I

    invoke-virtual {p0, v1}, Ljp/beyond/beadsdkwrapper/MainActivity;->setContentView(I)V

    .line 36
    const-string v1, "d0d2717c96ab13c487c40a6fe33e6d5844c904c2b6d65b7f"

    invoke-static {v1}, Ljp/beyond/sdk/Bead;->createExitInstance(Ljava/lang/String;)Ljp/beyond/sdk/Bead;

    move-result-object v1

    iput-object v1, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead480:Ljp/beyond/sdk/Bead;

    .line 37
    iget-object v1, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead480:Ljp/beyond/sdk/Bead;

    invoke-virtual {v1, p0}, Ljp/beyond/sdk/Bead;->requestAd(Landroid/app/Activity;)V

    .line 39
    sget v1, Ljp/beyond/beadsdkwrapper/R$id;->button480x480:I

    invoke-virtual {p0, v1}, Ljp/beyond/beadsdkwrapper/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 40
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Ljp/beyond/beadsdkwrapper/MainActivity$1;

    invoke-direct {v1, p0}, Ljp/beyond/beadsdkwrapper/MainActivity$1;-><init>(Ljp/beyond/beadsdkwrapper/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v1, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead480:Ljp/beyond/sdk/Bead;

    new-instance v2, Ljp/beyond/beadsdkwrapper/MainActivity$2;

    invoke-direct {v2, p0}, Ljp/beyond/beadsdkwrapper/MainActivity$2;-><init>(Ljp/beyond/beadsdkwrapper/MainActivity;)V

    invoke-virtual {v1, v2}, Ljp/beyond/sdk/Bead;->setOnCancelClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const-string v1, "d0d2717c96ab13c4e01fb179fce77f7b42b86ca8e0284424"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljp/beyond/sdk/Bead;->createOptionalInstance(Ljava/lang/String;I)Ljp/beyond/sdk/Bead;

    move-result-object v1

    iput-object v1, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead300:Ljp/beyond/sdk/Bead;

    .line 63
    iget-object v1, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead300:Ljp/beyond/sdk/Bead;

    invoke-virtual {v1, p0}, Ljp/beyond/sdk/Bead;->requestAd(Landroid/app/Activity;)V

    .line 64
    iget-object v1, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead300:Ljp/beyond/sdk/Bead;

    new-instance v2, Ljp/beyond/beadsdkwrapper/MainActivity$3;

    invoke-direct {v2, p0}, Ljp/beyond/beadsdkwrapper/MainActivity$3;-><init>(Ljp/beyond/beadsdkwrapper/MainActivity;)V

    invoke-virtual {v1, v2}, Ljp/beyond/sdk/Bead;->setOnCancelClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget v1, Ljp/beyond/beadsdkwrapper/R$id;->button300x250:I

    invoke-virtual {p0, v1}, Ljp/beyond/beadsdkwrapper/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 74
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v1, Ljp/beyond/beadsdkwrapper/MainActivity$4;

    invoke-direct {v1, p0}, Ljp/beyond/beadsdkwrapper/MainActivity$4;-><init>(Ljp/beyond/beadsdkwrapper/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 167
    iget-object v0, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead480:Ljp/beyond/sdk/Bead;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead480:Ljp/beyond/sdk/Bead;

    invoke-virtual {v0}, Ljp/beyond/sdk/Bead;->endAd()V

    .line 169
    iput-object v1, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead480:Ljp/beyond/sdk/Bead;

    .line 172
    :cond_0
    iget-object v0, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead300:Ljp/beyond/sdk/Bead;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead300:Ljp/beyond/sdk/Bead;

    invoke-virtual {v0}, Ljp/beyond/sdk/Bead;->endAd()V

    .line 174
    iput-object v1, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBead300:Ljp/beyond/sdk/Bead;

    .line 177
    :cond_1
    iget-object v0, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBeadIcon:Ljp/beyond/sdk/Bead;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBeadIcon:Ljp/beyond/sdk/Bead;

    invoke-virtual {v0}, Ljp/beyond/sdk/Bead;->endAd()V

    .line 179
    iput-object v1, p0, Ljp/beyond/beadsdkwrapper/MainActivity;->mBeadIcon:Ljp/beyond/sdk/Bead;

    .line 182
    :cond_2
    return-void
.end method
