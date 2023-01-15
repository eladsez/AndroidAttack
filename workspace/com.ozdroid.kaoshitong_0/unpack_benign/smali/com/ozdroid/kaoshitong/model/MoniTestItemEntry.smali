.class public Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;
.super Ljava/lang/Object;
.source "MoniTestItemEntry.java"


# instance fields
.field private answer:I

.field private choice:I

.field private testID:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "testID"    # I
    .param p2, "answer"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->choice:I

    .line 38
    iput p1, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->testID:I

    .line 39
    iput p2, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->answer:I

    .line 40
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "testID"    # I
    .param p2, "choice"    # I
    .param p3, "answer"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->choice:I

    .line 44
    iput p1, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->testID:I

    .line 45
    iput p2, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->choice:I

    .line 46
    iput p3, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->answer:I

    .line 47
    return-void
.end method


# virtual methods
.method public getAnswer()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->answer:I

    return v0
.end method

.method public getChoice()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->choice:I

    return v0
.end method

.method public getTestID()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->testID:I

    return v0
.end method

.method public isChoiceed()Z
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->choice:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRight()Z
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->choice:I

    iget v1, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->answer:I

    if-ne v0, v1, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChoice(I)V
    .locals 0
    .param p1, "choice"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->choice:I

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MoniTestItemEntry [testID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->testID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", choice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->choice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11
    const-string v1, ", answer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ozdroid/kaoshitong/model/MoniTestItemEntry;->answer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
