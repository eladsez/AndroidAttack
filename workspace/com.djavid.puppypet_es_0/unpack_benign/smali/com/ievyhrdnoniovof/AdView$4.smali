.class Lcom/ievyhrdnoniovof/AdView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdView;->loadHTMLWrap(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdView;

.field final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdView;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView$4;->k:Lcom/ievyhrdnoniovof/AdView;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdView$4;->m:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$4;->k:Lcom/ievyhrdnoniovof/AdView;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$4;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdView;->l(Lcom/ievyhrdnoniovof/AdView;Ljava/lang/String;)V

    return-void
.end method
