.class Lcom/eaglerex/mcpemodificator/hf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/mapsbrowse;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/mapsbrowse;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/hf;->a:Lcom/eaglerex/mcpemodificator/mapsbrowse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MAPCREATORS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/hf;->a:Lcom/eaglerex/mcpemodificator/mapsbrowse;

    invoke-virtual {v1, v0}, Lcom/eaglerex/mcpemodificator/mapsbrowse;->startActivity(Landroid/content/Intent;)V

    return-void
.end method