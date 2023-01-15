.class public Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;
.super Ljava/lang/Object;
.source "ChannelItemEntry.java"


# instance fields
.field private end:I

.field private name:Ljava/lang/String;

.field private start:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;->name:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;->start:I

    .line 28
    iput p3, p0, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;->end:I

    .line 29
    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;->end:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/ozdroid/kaoshitong/model/ChannelItemEntry;->start:I

    return v0
.end method
