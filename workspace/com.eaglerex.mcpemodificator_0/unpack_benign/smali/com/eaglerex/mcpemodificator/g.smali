.class Lcom/eaglerex/mcpemodificator/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/MainActivity;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/g;->a:Lcom/eaglerex/mcpemodificator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/g;->a:Lcom/eaglerex/mcpemodificator/MainActivity;

    invoke-virtual {v0}, Lcom/eaglerex/mcpemodificator/MainActivity;->finish()V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/g;->a:Lcom/eaglerex/mcpemodificator/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eaglerex/mcpemodificator/MainActivity;->moveTaskToBack(Z)Z

    return-void
.end method
