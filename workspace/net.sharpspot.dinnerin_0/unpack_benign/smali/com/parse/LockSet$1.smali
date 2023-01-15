.class Lcom/parse/LockSet$1;
.super Ljava/lang/Object;
.source "LockSet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/LockSet;-><init>(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/concurrent/locks/Lock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/LockSet;


# direct methods
.method constructor <init>(Lcom/parse/LockSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/LockSet$1;->this$0:Lcom/parse/LockSet;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/concurrent/locks/Lock;

    check-cast p2, Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, p1, p2}, Lcom/parse/LockSet$1;->compare(Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Lock;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Lock;)I
    .locals 3
    .param p1, "lhs"    # Ljava/util/concurrent/locks/Lock;
    .param p2, "rhs"    # Ljava/util/concurrent/locks/Lock;

    .prologue
    .line 19
    invoke-static {p1}, Lcom/parse/LockSet;->access$0(Ljava/util/concurrent/locks/Lock;)Ljava/lang/Long;

    move-result-object v0

    .line 20
    .local v0, "lhsId":Ljava/lang/Long;
    invoke-static {p2}, Lcom/parse/LockSet;->access$0(Ljava/util/concurrent/locks/Lock;)Ljava/lang/Long;

    move-result-object v1

    .line 21
    .local v1, "rhsId":Ljava/lang/Long;
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    return v2
.end method
