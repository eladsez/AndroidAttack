.class public Lcom/eaglerex/mcpemodificator/splash;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/eaglerex/mcpemodificator/splash;->setContentView(I)V

    new-instance v0, Lcom/eaglerex/mcpemodificator/ny;

    invoke-direct {v0, p0}, Lcom/eaglerex/mcpemodificator/ny;-><init>(Lcom/eaglerex/mcpemodificator/splash;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/eaglerex/mcpemodificator/splash;->finish()V

    return-void
.end method
