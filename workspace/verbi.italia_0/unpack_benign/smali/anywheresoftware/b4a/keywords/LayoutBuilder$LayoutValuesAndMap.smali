.class public Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutValuesAndMap;
.super Ljava/lang/Object;
.source "LayoutBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/keywords/LayoutBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutValuesAndMap"
.end annotation


# instance fields
.field public final layoutValues:Lanywheresoftware/b4a/keywords/LayoutValues;

.field public final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lanywheresoftware/b4a/keywords/LayoutValues;Ljava/util/LinkedHashMap;)V
    .locals 0
    .param p1, "layoutValues"    # Lanywheresoftware/b4a/keywords/LayoutValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanywheresoftware/b4a/keywords/LayoutValues;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lanywheresoftware/b4a/keywords/LayoutBuilder$ViewWrapperAndAnchor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutValuesAndMap;->layoutValues:Lanywheresoftware/b4a/keywords/LayoutValues;

    .line 54
    iput-object p2, p0, Lanywheresoftware/b4a/keywords/LayoutBuilder$LayoutValuesAndMap;->map:Ljava/util/LinkedHashMap;

    .line 55
    return-void
.end method
