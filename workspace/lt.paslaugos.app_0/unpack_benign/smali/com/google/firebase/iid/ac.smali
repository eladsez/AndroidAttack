.class final Lcom/google/firebase/iid/ac;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/google/firebase/iid/ab;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/ab;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/ac;->a:Lcom/google/firebase/iid/ab;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/ac;->a:Lcom/google/firebase/iid/ab;

    invoke-static {v0, p1}, Lcom/google/firebase/iid/ab;->a(Lcom/google/firebase/iid/ab;Landroid/os/Message;)V

    return-void
.end method
