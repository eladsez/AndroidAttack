.class Lcom/parse/ParseACL$UserResolutionListener;
.super Lcom/parse/GetCallback;
.source "ParseACL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseACL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserResolutionListener"
.end annotation


# instance fields
.field private final parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parse/ParseACL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parse/ParseACL;)V
    .locals 1
    .param p1, "parent"    # Lcom/parse/ParseACL;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/parse/GetCallback;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/ParseACL$UserResolutionListener;->parent:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 3
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseACL$UserResolutionListener;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseACL;

    .line 41
    .local v1, "parent":Lcom/parse/ParseACL;
    if-eqz v1, :cond_0

    .line 42
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/parse/ParseACL;->access$0(Lcom/parse/ParseACL;Lcom/parse/ParseUser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    invoke-virtual {p1, p0}, Lcom/parse/ParseObject;->unregisterSaveListener(Lcom/parse/GetCallback;)V

    .line 47
    return-void

    .line 44
    .end local v1    # "parent":Lcom/parse/ParseACL;
    :catchall_0
    move-exception v2

    .line 45
    invoke-virtual {p1, p0}, Lcom/parse/ParseObject;->unregisterSaveListener(Lcom/parse/GetCallback;)V

    .line 46
    throw v2
.end method
