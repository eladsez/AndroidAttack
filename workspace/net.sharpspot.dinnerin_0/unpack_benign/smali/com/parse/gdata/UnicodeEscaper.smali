.class public abstract Lcom/parse/gdata/UnicodeEscaper;
.super Ljava/lang/Object;
.source "UnicodeEscaper.java"

# interfaces
.implements Lcom/parse/gdata/Escaper;


# static fields
.field private static final DEST_PAD:I = 0x20

.field private static final DEST_TL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 455
    new-instance v0, Lcom/parse/gdata/UnicodeEscaper$1;

    invoke-direct {v0}, Lcom/parse/gdata/UnicodeEscaper$1;-><init>()V

    sput-object v0, Lcom/parse/gdata/UnicodeEscaper;->DEST_TL:Ljava/lang/ThreadLocal;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final codePointAt(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "end"    # I

    .prologue
    .line 409
    if-ge p1, p2, :cond_5

    .line 410
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 411
    .local v0, "c1":C
    const v3, 0xd800

    if-lt v0, v3, :cond_0

    .line 412
    const v3, 0xdfff

    if-le v0, v3, :cond_1

    .line 423
    .end local v0    # "c1":C
    :cond_0
    :goto_0
    return v0

    .line 415
    .restart local v0    # "c1":C
    :cond_1
    const v3, 0xdbff

    if-gt v0, v3, :cond_4

    .line 417
    if-ne v2, p2, :cond_2

    .line 418
    neg-int v0, v0

    goto :goto_0

    .line 421
    :cond_2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 422
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 423
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_0

    .line 425
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 426
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected low surrogate but got char \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 427
    const-string v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 426
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 429
    .end local v1    # "c2":C
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected low surrogate character \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 431
    const-string v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 430
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 429
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 434
    .end local v0    # "c1":C
    .end local v2    # "index":I
    .restart local p1    # "index":I
    :cond_5
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "Index exceeds specified range"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static final growBuffer([CII)[C
    .locals 2
    .param p0, "dest"    # [C
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 443
    new-array v0, p2, [C

    .line 444
    .local v0, "copy":[C
    if-lez p1, :cond_0

    .line 445
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    :cond_0
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "out"    # Ljava/lang/Appendable;

    .prologue
    .line 255
    invoke-static {p1}, Lcom/parse/gdata/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v0, Lcom/parse/gdata/UnicodeEscaper$2;

    invoke-direct {v0, p0, p1}, Lcom/parse/gdata/UnicodeEscaper$2;-><init>(Lcom/parse/gdata/UnicodeEscaper;Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 145
    .local v0, "end":I
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/parse/gdata/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 146
    .local v1, "index":I
    if-ne v1, v0, :cond_0

    .end local p1    # "string":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/parse/gdata/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected abstract escape(I)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v12, 0x0

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 170
    .local v5, "end":I
    sget-object v10, Lcom/parse/gdata/UnicodeEscaper;->DEST_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    .line 171
    .local v2, "dest":[C
    const/4 v3, 0x0

    .line 172
    .local v3, "destIndex":I
    const/4 v9, 0x0

    .line 174
    .local v9, "unescapedChunkStart":I
    :goto_0
    if-lt p2, v5, :cond_2

    .line 208
    sub-int v0, v5, v9

    .line 209
    .local v0, "charsSkipped":I
    if-lez v0, :cond_1

    .line 210
    add-int v6, v3, v0

    .line 211
    .local v6, "endIndex":I
    array-length v10, v2

    if-ge v10, v6, :cond_0

    .line 212
    invoke-static {v2, v3, v6}, Lcom/parse/gdata/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 214
    :cond_0
    invoke-virtual {p1, v9, v5, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 215
    move v3, v6

    .line 217
    .end local v6    # "endIndex":I
    :cond_1
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2, v12, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v10

    .line 175
    .end local v0    # "charsSkipped":I
    :cond_2
    invoke-static {p1, p2, v5}, Lcom/parse/gdata/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 176
    .local v1, "cp":I
    if-gez v1, :cond_3

    .line 177
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 178
    const-string v11, "Trailing high surrogate at end of input"

    .line 177
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 180
    :cond_3
    invoke-virtual {p0, v1}, Lcom/parse/gdata/UnicodeEscaper;->escape(I)[C

    move-result-object v7

    .line 181
    .local v7, "escaped":[C
    if-eqz v7, :cond_6

    .line 182
    sub-int v0, p2, v9

    .line 186
    .restart local v0    # "charsSkipped":I
    add-int v10, v3, v0

    array-length v11, v7

    add-int v8, v10, v11

    .line 187
    .local v8, "sizeNeeded":I
    array-length v10, v2

    if-ge v10, v8, :cond_4

    .line 188
    sub-int v10, v5, p2

    add-int/2addr v10, v8

    add-int/lit8 v4, v10, 0x20

    .line 189
    .local v4, "destLength":I
    invoke-static {v2, v3, v4}, Lcom/parse/gdata/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 192
    .end local v4    # "destLength":I
    :cond_4
    if-lez v0, :cond_5

    .line 193
    invoke-virtual {p1, v9, p2, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 194
    add-int/2addr v3, v0

    .line 196
    :cond_5
    array-length v10, v7

    if-lez v10, :cond_6

    .line 197
    array-length v10, v7

    invoke-static {v7, v12, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    array-length v10, v7

    add-int/2addr v3, v10

    .line 202
    .end local v0    # "charsSkipped":I
    .end local v8    # "sizeNeeded":I
    :cond_6
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x2

    :goto_1
    add-int v9, p2, v10

    .line 203
    invoke-virtual {p0, p1, v9, v5}, Lcom/parse/gdata/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    goto :goto_0

    .line 202
    :cond_7
    const/4 v10, 0x1

    goto :goto_1
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 109
    move v1, p2

    .line 110
    .local v1, "index":I
    :goto_0
    if-lt v1, p3, :cond_1

    .line 117
    :cond_0
    return v1

    .line 111
    :cond_1
    invoke-static {p1, v1, p3}, Lcom/parse/gdata/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 112
    .local v0, "cp":I
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/parse/gdata/UnicodeEscaper;->escape(I)[C

    move-result-object v2

    if-nez v2, :cond_0

    .line 115
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method
