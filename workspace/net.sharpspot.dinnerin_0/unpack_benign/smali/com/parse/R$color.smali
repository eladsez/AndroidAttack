.class public final Lcom/parse/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static com_facebook_blue:I

.field public static com_facebook_loginview_text_color:I

.field public static com_facebook_usersettingsfragment_connected_shadow_color:I

.field public static com_facebook_usersettingsfragment_connected_text_color:I

.field public static com_facebook_usersettingsfragment_not_connected_text_color:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const/high16 v0, 0x7f060000

    sput v0, Lcom/parse/R$color;->com_facebook_blue:I

    .line 155
    const v0, 0x7f060004

    sput v0, Lcom/parse/R$color;->com_facebook_loginview_text_color:I

    .line 156
    const v0, 0x7f060002

    sput v0, Lcom/parse/R$color;->com_facebook_usersettingsfragment_connected_shadow_color:I

    .line 157
    const v0, 0x7f060001

    sput v0, Lcom/parse/R$color;->com_facebook_usersettingsfragment_connected_text_color:I

    .line 158
    const v0, 0x7f060003

    sput v0, Lcom/parse/R$color;->com_facebook_usersettingsfragment_not_connected_text_color:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
