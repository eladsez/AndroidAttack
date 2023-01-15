.class Lcom/ievyhrdnoniovof/AdController$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdController;->setOnAdLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdController;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdController;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdController;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController$14;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$14;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->i(Lcom/ievyhrdnoniovof/AdController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$14;->k:Lcom/ievyhrdnoniovof/AdController;

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v1, "5I\u0000]\u0000I\u0000U\u0006^"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5.9)\')./9>/\'#5"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$14;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->z(Lcom/ievyhrdnoniovof/AdController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$14;->k:Lcom/ievyhrdnoniovof/AdController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdController;->A(Lcom/ievyhrdnoniovof/AdController;Z)Z

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$14;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->u(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$14;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->u(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdListener;->onAdCached()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$14;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->i(Lcom/ievyhrdnoniovof/AdController;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$14;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->u(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdListener;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "LBAdController"

    const-string v1, "\u0011I\u000c\\\u0002^\u0017\u001b\nU$_)T\u0004_\u0000_"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$14;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->u(Lcom/ievyhrdnoniovof/AdController;)Lcom/ievyhrdnoniovof/AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdListener;->onAdLoaded()V

    :cond_2
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$14;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->U(Lcom/ievyhrdnoniovof/AdController;)V

    :cond_3
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$14;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0, v3}, Lcom/ievyhrdnoniovof/AdController;->I(Lcom/ievyhrdnoniovof/AdController;Z)Z

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$14;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->A(Lcom/ievyhrdnoniovof/AdController;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$14;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v0, v3}, Lcom/ievyhrdnoniovof/AdController;->m(Lcom/ievyhrdnoniovof/AdController;Z)Z

    goto :goto_0
.end method
