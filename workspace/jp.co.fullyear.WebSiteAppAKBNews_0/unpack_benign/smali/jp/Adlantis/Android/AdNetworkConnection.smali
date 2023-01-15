.class public abstract Ljp/Adlantis/Android/AdNetworkConnection;
.super Ljava/lang/Object;


# instance fields
.field protected _conversionTagHost:Ljava/lang/String;

.field protected _conversionTagTestHost:Ljava/lang/String;

.field protected _host:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendParameters(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 0

    return-object p1
.end method

.method public getConversionTagHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdNetworkConnection;->_conversionTagHost:Ljava/lang/String;

    return-object v0
.end method

.method public getConversionTagTestHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdNetworkConnection;->_conversionTagTestHost:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/Adlantis/Android/AdNetworkConnection;->_host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public abstract publisherIDMetadataKey()Ljava/lang/String;
.end method

.method setHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdNetworkConnection;->_host:Ljava/lang/String;

    return-void
.end method
