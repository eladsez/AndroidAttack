.class Lcom/ievyhrdnoniovof/AdController$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdController;->loadAudioTrack(J)V
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
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdController$16;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$16;->k:Lcom/ievyhrdnoniovof/AdController;

    iget-object v0, v0, Lcom/ievyhrdnoniovof/AdController;->W:Landroid/content/Context;

    const-string v1, "9 \u000c4\u000c \u000c<\n7"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdRequest;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h!d,h:z0\u007f,t1i$x.d"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdEncryption;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdController$16;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->z(Lcom/ievyhrdnoniovof/AdController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdController$16;->k:Lcom/ievyhrdnoniovof/AdController;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdController;->loadAudioAd()V

    return-void
.end method
