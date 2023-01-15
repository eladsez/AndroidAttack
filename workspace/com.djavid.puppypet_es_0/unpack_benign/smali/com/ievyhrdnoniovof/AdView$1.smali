.class Lcom/ievyhrdnoniovof/AdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Ljava/lang/String;

.field final synthetic m:Lcom/ievyhrdnoniovof/AdView;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdView;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView$1;->m:Lcom/ievyhrdnoniovof/AdView;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdView$1;->k:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$1;->m:Lcom/ievyhrdnoniovof/AdView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "\u0019\"\u0005\"\u0000 \u0001*\u00037I"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdView$1;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdView;->l(Lcom/ievyhrdnoniovof/AdView;Ljava/lang/String;)V

    return-void
.end method
