.class Lcom/eaglerex/mcpemodificator/nh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/sendmod;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/sendmod;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/nh;->a:Lcom/eaglerex/mcpemodificator/sendmod;

    iput-object p2, p0, Lcom/eaglerex/mcpemodificator/nh;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/nh;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/nh;->a:Lcom/eaglerex/mcpemodificator/sendmod;

    invoke-virtual {v0}, Lcom/eaglerex/mcpemodificator/sendmod;->finish()V

    return-void
.end method
