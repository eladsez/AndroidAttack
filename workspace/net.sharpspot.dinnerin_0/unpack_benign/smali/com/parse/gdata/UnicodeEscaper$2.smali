.class Lcom/parse/gdata/UnicodeEscaper$2;
.super Ljava/lang/Object;
.source "UnicodeEscaper.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/gdata/UnicodeEscaper;->escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field decodedChars:[C

.field pendingHighSurrogate:I

.field final synthetic this$0:Lcom/parse/gdata/UnicodeEscaper;

.field private final synthetic val$out:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Lcom/parse/gdata/UnicodeEscaper;Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/parse/gdata/UnicodeEscaper$2;->this$0:Lcom/parse/gdata/UnicodeEscaper;

    iput-object p2, p0, Lcom/parse/gdata/UnicodeEscaper$2;->val$out:Ljava/lang/Appendable;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/gdata/UnicodeEscaper$2;->pendingHighSurrogate:I

    .line 259
    const/4 v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/parse/gdata/UnicodeEscaper$2;->decodedChars:[C

    return-void
.end method

.method private outputChars([CI)V
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 372
    return-void

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/parse/gdata/UnicodeEscaper$2;->val$out:Ljava/lang/Appendable;

    aget-char v2, p1, v0

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 4
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 331
    iget v1, p0, Lcom/parse/gdata/UnicodeEscaper$2;->pendingHighSurrogate:I

    if-eq v1, v3, :cond_2

    .line 334
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected low surrogate character but got \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 337
    const-string v3, "\' with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/parse/gdata/UnicodeEscaper$2;->this$0:Lcom/parse/gdata/UnicodeEscaper;

    iget v2, p0, Lcom/parse/gdata/UnicodeEscaper$2;->pendingHighSurrogate:I

    int-to-char v2, v2

    invoke-static {v2, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parse/gdata/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    .line 341
    .local v0, "escaped":[C
    if-eqz v0, :cond_1

    .line 342
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/parse/gdata/UnicodeEscaper$2;->outputChars([CI)V

    .line 347
    :goto_0
    iput v3, p0, Lcom/parse/gdata/UnicodeEscaper$2;->pendingHighSurrogate:I

    .line 365
    .end local v0    # "escaped":[C
    :goto_1
    return-object p0

    .line 344
    .restart local v0    # "escaped":[C
    :cond_1
    iget-object v1, p0, Lcom/parse/gdata/UnicodeEscaper$2;->val$out:Ljava/lang/Appendable;

    iget v2, p0, Lcom/parse/gdata/UnicodeEscaper$2;->pendingHighSurrogate:I

    int-to-char v2, v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 345
    iget-object v1, p0, Lcom/parse/gdata/UnicodeEscaper$2;->val$out:Ljava/lang/Appendable;

    invoke-interface {v1, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 348
    .end local v0    # "escaped":[C
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 350
    iput p1, p0, Lcom/parse/gdata/UnicodeEscaper$2;->pendingHighSurrogate:I

    goto :goto_1

    .line 352
    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 353
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected low surrogate character \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 355
    const-string v3, "\' with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 354
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_4
    iget-object v1, p0, Lcom/parse/gdata/UnicodeEscaper$2;->this$0:Lcom/parse/gdata/UnicodeEscaper;

    invoke-virtual {v1, p1}, Lcom/parse/gdata/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    .line 359
    .restart local v0    # "escaped":[C
    if-eqz v0, :cond_5

    .line 360
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/parse/gdata/UnicodeEscaper$2;->outputChars([CI)V

    goto :goto_1

    .line 362
    :cond_5
    iget-object v1, p0, Lcom/parse/gdata/UnicodeEscaper$2;->val$out:Ljava/lang/Appendable;

    invoke-interface {v1, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/gdata/UnicodeEscaper$2;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 10
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 267
    move v3, p2

    .line 268
    .local v3, "index":I
    if-ge v3, p3, :cond_3

    .line 272
    move v6, v3

    .line 273
    .local v6, "unescapedChunkStart":I
    iget v7, p0, Lcom/parse/gdata/UnicodeEscaper$2;->pendingHighSurrogate:I

    if-eq v7, v9, :cond_1

    .line 276
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 277
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 278
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 279
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Expected low surrogate character but got "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 278
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 282
    :cond_0
    iget-object v7, p0, Lcom/parse/gdata/UnicodeEscaper$2;->this$0:Lcom/parse/gdata/UnicodeEscaper;

    iget v8, p0, Lcom/parse/gdata/UnicodeEscaper$2;->pendingHighSurrogate:I

    int-to-char v8, v8

    invoke-static {v8, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/parse/gdata/UnicodeEscaper;->escape(I)[C

    move-result-object v2

    .line 283
    .local v2, "escaped":[C
    if-eqz v2, :cond_4

    .line 286
    array-length v7, v2

    invoke-direct {p0, v2, v7}, Lcom/parse/gdata/UnicodeEscaper$2;->outputChars([CI)V

    .line 287
    add-int/lit8 v6, v6, 0x1

    .line 293
    :goto_0
    iput v9, p0, Lcom/parse/gdata/UnicodeEscaper$2;->pendingHighSurrogate:I

    move v3, v4

    .line 297
    .end local v0    # "c":C
    .end local v2    # "escaped":[C
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/parse/gdata/UnicodeEscaper$2;->this$0:Lcom/parse/gdata/UnicodeEscaper;

    invoke-virtual {v7, p1, v3, p3}, Lcom/parse/gdata/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 298
    if-le v3, v6, :cond_2

    .line 299
    iget-object v7, p0, Lcom/parse/gdata/UnicodeEscaper$2;->val$out:Ljava/lang/Appendable;

    invoke-interface {v7, p1, v6, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 301
    :cond_2
    if-ne v3, p3, :cond_5

    .line 327
    .end local v6    # "unescapedChunkStart":I
    :cond_3
    :goto_2
    return-object p0

    .line 291
    .end local v3    # "index":I
    .restart local v0    # "c":C
    .restart local v2    # "escaped":[C
    .restart local v4    # "index":I
    .restart local v6    # "unescapedChunkStart":I
    :cond_4
    iget-object v7, p0, Lcom/parse/gdata/UnicodeEscaper$2;->val$out:Ljava/lang/Appendable;

    iget v8, p0, Lcom/parse/gdata/UnicodeEscaper$2;->pendingHighSurrogate:I

    int-to-char v8, v8

    invoke-interface {v7, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 305
    .end local v0    # "c":C
    .end local v2    # "escaped":[C
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_5
    invoke-static {p1, v3, p3}, Lcom/parse/gdata/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 306
    .local v1, "cp":I
    if-gez v1, :cond_6

    .line 309
    neg-int v7, v1

    iput v7, p0, Lcom/parse/gdata/UnicodeEscaper$2;->pendingHighSurrogate:I

    goto :goto_2

    .line 313
    :cond_6
    iget-object v7, p0, Lcom/parse/gdata/UnicodeEscaper$2;->this$0:Lcom/parse/gdata/UnicodeEscaper;

    invoke-virtual {v7, v1}, Lcom/parse/gdata/UnicodeEscaper;->escape(I)[C

    move-result-object v2

    .line 314
    .restart local v2    # "escaped":[C
    if-eqz v2, :cond_7

    .line 315
    array-length v7, v2

    invoke-direct {p0, v2, v7}, Lcom/parse/gdata/UnicodeEscaper$2;->outputChars([CI)V

    .line 323
    :goto_3
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x2

    :goto_4
    add-int/2addr v3, v7

    .line 324
    move v6, v3

    .line 295
    goto :goto_1

    .line 319
    :cond_7
    iget-object v7, p0, Lcom/parse/gdata/UnicodeEscaper$2;->decodedChars:[C

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v5

    .line 320
    .local v5, "len":I
    iget-object v7, p0, Lcom/parse/gdata/UnicodeEscaper$2;->decodedChars:[C

    invoke-direct {p0, v7, v5}, Lcom/parse/gdata/UnicodeEscaper$2;->outputChars([CI)V

    goto :goto_3

    .line 323
    .end local v5    # "len":I
    :cond_8
    const/4 v7, 0x1

    goto :goto_4
.end method
