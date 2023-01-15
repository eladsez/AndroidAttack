.class public final Lorg/hermit/android/provider/TableSchema$FieldDesc;
.super Ljava/lang/Object;
.source "TableSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hermit/android/provider/TableSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDesc"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final type:Lorg/hermit/android/provider/TableSchema$FieldType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/hermit/android/provider/TableSchema$FieldType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/hermit/android/provider/TableSchema$FieldType;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lorg/hermit/android/provider/TableSchema$FieldDesc;->type:Lorg/hermit/android/provider/TableSchema$FieldType;

    .line 131
    return-void
.end method

.method public constructor <init>(Lorg/hermit/android/provider/TableSchema$FieldType;)V
    .locals 2
    .param p1, "type"    # Lorg/hermit/android/provider/TableSchema$FieldType;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    sget-object v0, Lorg/hermit/android/provider/TableSchema$FieldType;->_ID:Lorg/hermit/android/provider/TableSchema$FieldType;

    if-eq p1, v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t use one-arg ctor with a normal type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    const-string v0, "_id"

    iput-object v0, p0, Lorg/hermit/android/provider/TableSchema$FieldDesc;->name:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lorg/hermit/android/provider/TableSchema$FieldDesc;->type:Lorg/hermit/android/provider/TableSchema$FieldType;

    .line 126
    return-void
.end method
