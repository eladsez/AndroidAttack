.class public final enum Lorg/hermit/android/provider/TableSchema$FieldType;
.super Ljava/lang/Enum;
.source "TableSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/provider/TableSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/hermit/android/provider/TableSchema$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BIGINT:Lorg/hermit/android/provider/TableSchema$FieldType;

.field public static final enum BOOLEAN:Lorg/hermit/android/provider/TableSchema$FieldType;

.field public static final enum DOUBLE:Lorg/hermit/android/provider/TableSchema$FieldType;

.field private static final synthetic ENUM$VALUES:[Lorg/hermit/android/provider/TableSchema$FieldType;

.field public static final enum FLOAT:Lorg/hermit/android/provider/TableSchema$FieldType;

.field public static final enum INT:Lorg/hermit/android/provider/TableSchema$FieldType;

.field public static final enum REAL:Lorg/hermit/android/provider/TableSchema$FieldType;

.field public static final enum TEXT:Lorg/hermit/android/provider/TableSchema$FieldType;

.field public static final enum _ID:Lorg/hermit/android/provider/TableSchema$FieldType;


# instance fields
.field private final textRep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-instance v0, Lorg/hermit/android/provider/TableSchema$FieldType;

    const-string v1, "_ID"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-direct {v0, v1, v3, v2}, Lorg/hermit/android/provider/TableSchema$FieldType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/hermit/android/provider/TableSchema$FieldType;->_ID:Lorg/hermit/android/provider/TableSchema$FieldType;

    .line 73
    new-instance v0, Lorg/hermit/android/provider/TableSchema$FieldType;

    const-string v1, "BIGINT"

    invoke-direct {v0, v1, v4}, Lorg/hermit/android/provider/TableSchema$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/android/provider/TableSchema$FieldType;->BIGINT:Lorg/hermit/android/provider/TableSchema$FieldType;

    .line 77
    new-instance v0, Lorg/hermit/android/provider/TableSchema$FieldType;

    const-string v1, "INT"

    invoke-direct {v0, v1, v5}, Lorg/hermit/android/provider/TableSchema$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/android/provider/TableSchema$FieldType;->INT:Lorg/hermit/android/provider/TableSchema$FieldType;

    .line 81
    new-instance v0, Lorg/hermit/android/provider/TableSchema$FieldType;

    const-string v1, "REAL"

    invoke-direct {v0, v1, v6}, Lorg/hermit/android/provider/TableSchema$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/android/provider/TableSchema$FieldType;->REAL:Lorg/hermit/android/provider/TableSchema$FieldType;

    .line 85
    new-instance v0, Lorg/hermit/android/provider/TableSchema$FieldType;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v7}, Lorg/hermit/android/provider/TableSchema$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/android/provider/TableSchema$FieldType;->FLOAT:Lorg/hermit/android/provider/TableSchema$FieldType;

    .line 89
    new-instance v0, Lorg/hermit/android/provider/TableSchema$FieldType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/hermit/android/provider/TableSchema$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/android/provider/TableSchema$FieldType;->DOUBLE:Lorg/hermit/android/provider/TableSchema$FieldType;

    .line 93
    new-instance v0, Lorg/hermit/android/provider/TableSchema$FieldType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/hermit/android/provider/TableSchema$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/android/provider/TableSchema$FieldType;->BOOLEAN:Lorg/hermit/android/provider/TableSchema$FieldType;

    .line 97
    new-instance v0, Lorg/hermit/android/provider/TableSchema$FieldType;

    const-string v1, "TEXT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/hermit/android/provider/TableSchema$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/hermit/android/provider/TableSchema$FieldType;->TEXT:Lorg/hermit/android/provider/TableSchema$FieldType;

    .line 64
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/hermit/android/provider/TableSchema$FieldType;

    sget-object v1, Lorg/hermit/android/provider/TableSchema$FieldType;->_ID:Lorg/hermit/android/provider/TableSchema$FieldType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/hermit/android/provider/TableSchema$FieldType;->BIGINT:Lorg/hermit/android/provider/TableSchema$FieldType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/hermit/android/provider/TableSchema$FieldType;->INT:Lorg/hermit/android/provider/TableSchema$FieldType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/hermit/android/provider/TableSchema$FieldType;->REAL:Lorg/hermit/android/provider/TableSchema$FieldType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/hermit/android/provider/TableSchema$FieldType;->FLOAT:Lorg/hermit/android/provider/TableSchema$FieldType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/hermit/android/provider/TableSchema$FieldType;->DOUBLE:Lorg/hermit/android/provider/TableSchema$FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/hermit/android/provider/TableSchema$FieldType;->BOOLEAN:Lorg/hermit/android/provider/TableSchema$FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/hermit/android/provider/TableSchema$FieldType;->TEXT:Lorg/hermit/android/provider/TableSchema$FieldType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/hermit/android/provider/TableSchema$FieldType;->ENUM$VALUES:[Lorg/hermit/android/provider/TableSchema$FieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    invoke-virtual {p0}, Lorg/hermit/android/provider/TableSchema$FieldType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/hermit/android/provider/TableSchema$FieldType;->textRep:Ljava/lang/String;

    .line 105
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "t"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput-object p3, p0, Lorg/hermit/android/provider/TableSchema$FieldType;->textRep:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/hermit/android/provider/TableSchema$FieldType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/hermit/android/provider/TableSchema$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/hermit/android/provider/TableSchema$FieldType;

    return-object p0
.end method

.method public static values()[Lorg/hermit/android/provider/TableSchema$FieldType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/hermit/android/provider/TableSchema$FieldType;->ENUM$VALUES:[Lorg/hermit/android/provider/TableSchema$FieldType;

    array-length v1, v0

    new-array v2, v1, [Lorg/hermit/android/provider/TableSchema$FieldType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/hermit/android/provider/TableSchema$FieldType;->textRep:Ljava/lang/String;

    return-object v0
.end method
