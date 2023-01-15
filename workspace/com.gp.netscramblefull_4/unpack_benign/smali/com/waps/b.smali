.class Lcom/waps/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/waps/AdView;


# direct methods
.method constructor <init>(Lcom/waps/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/b;->a:Lcom/waps/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/waps/b;->a:Lcom/waps/AdView;

    invoke-static {v0}, Lcom/waps/AdView;->access$100(Lcom/waps/AdView;)V

    return-void
.end method
