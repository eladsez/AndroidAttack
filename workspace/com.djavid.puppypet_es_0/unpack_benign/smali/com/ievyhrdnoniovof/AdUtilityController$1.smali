.class Lcom/ievyhrdnoniovof/AdUtilityController$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ievyhrdnoniovof/AdUtilityController;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic E:Ljava/util/List;

.field final synthetic M:Ljava/lang/String;

.field final synthetic k:Lcom/ievyhrdnoniovof/AdUtilityController;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdUtilityController;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdUtilityController;
    .param p2, "arg1"    # Ljava/util/List;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdUtilityController$1;->k:Lcom/ievyhrdnoniovof/AdUtilityController;

    iput-object p2, p0, Lcom/ievyhrdnoniovof/AdUtilityController$1;->E:Ljava/util/List;

    iput-object p3, p0, Lcom/ievyhrdnoniovof/AdUtilityController$1;->m:Ljava/lang/String;

    iput-object p4, p0, Lcom/ievyhrdnoniovof/AdUtilityController$1;->l:Ljava/lang/String;

    iput-object p5, p0, Lcom/ievyhrdnoniovof/AdUtilityController$1;->M:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdUtilityController$1;->E:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdUtilityController$1;->k:Lcom/ievyhrdnoniovof/AdUtilityController;

    const-string v2, "n\u0015"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdWakeLock;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/ievyhrdnoniovof/AdUtilityController$1;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/ievyhrdnoniovof/AdUtilityController$1;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/ievyhrdnoniovof/AdUtilityController$1;->M:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/ievyhrdnoniovof/AdUtilityController;->l(Lcom/ievyhrdnoniovof/AdUtilityController;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
