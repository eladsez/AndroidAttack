.class public abstract Landroid/support/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/ComponentName;Landroid/support/c/b;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    new-instance v0, Landroid/support/c/d$1;

    invoke-static {p2}, Landroid/support/c/g$a;->a(Landroid/os/IBinder;)Landroid/support/c/g;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Landroid/support/c/d$1;-><init>(Landroid/support/c/d;Landroid/support/c/g;Landroid/content/ComponentName;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/c/d;->a(Landroid/content/ComponentName;Landroid/support/c/b;)V

    return-void
.end method
