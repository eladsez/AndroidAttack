.class Lcom/ievyhrdnoniovof/AdActionHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ievyhrdnoniovof/AdPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdActionHandler;->l(Lcom/ievyhrdnoniovof/AdPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdActionHandler;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdActionHandler;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdActionHandler;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdActionHandler$1;->k:Lcom/ievyhrdnoniovof/AdActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdActionHandler$1;->k:Lcom/ievyhrdnoniovof/AdActionHandler;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdActionHandler;->finish()V

    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdActionHandler$1;->k:Lcom/ievyhrdnoniovof/AdActionHandler;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdActionHandler;->finish()V

    return-void
.end method

.method public onPrepared()V
    .locals 0

    return-void
.end method
