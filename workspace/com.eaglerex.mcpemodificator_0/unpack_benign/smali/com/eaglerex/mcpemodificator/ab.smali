.class Lcom/eaglerex/mcpemodificator/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/help;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/help;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/ab;->a:Lcom/eaglerex/mcpemodificator/help;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.INSTALLMODS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/ab;->a:Lcom/eaglerex/mcpemodificator/help;

    invoke-virtual {v1, v0}, Lcom/eaglerex/mcpemodificator/help;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
