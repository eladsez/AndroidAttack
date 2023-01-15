.class public abstract Lcom/parse/FunctionCallback;
.super Lcom/parse/ParseCallback;
.source "FunctionCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/parse/ParseCallback",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lcom/parse/FunctionCallback;, "Lcom/parse/FunctionCallback<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation
.end method

.method final internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 0
    .param p2, "e"    # Lcom/parse/ParseException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/parse/FunctionCallback;, "Lcom/parse/FunctionCallback<TT;>;"
    .local p1, "returnValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lcom/parse/FunctionCallback;->done(Ljava/lang/Object;Lcom/parse/ParseException;)V

    .line 45
    return-void
.end method
