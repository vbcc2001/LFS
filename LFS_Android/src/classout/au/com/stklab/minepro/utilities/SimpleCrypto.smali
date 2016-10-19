.class public Lau/com/stklab/minepro/utilities/SimpleCrypto;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    sget-object v0, Lau/com/stklab/minepro/SelectLanguage;->defaultLinkpage:Ljava/lang/StringBuilder;

    sget-object v1, Lau/com/stklab/minepro/SelectLanguage;->defaultLinkpage:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    sget-object v2, Lau/com/stklab/minepro/SelectLanguage;->defaultLinkpage:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lau/com/stklab/minepro/SelectLanguage;->defaultLinkpage:Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lau/com/stklab/minepro/SelectLanguage;->defaultLinkpage:Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    const/16 v4, 0x4a

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lau/com/stklab/minepro/SelectLanguage;->defaultLinkpage:Ljava/lang/StringBuilder;

    const/16 v4, 0x38

    const/16 v5, 0x3b

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    const-string v6, "fuck"

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    const-string v2, "haha"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lau/com/stklab/minepro/utilities/SimpleCrypto;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p2}, Lau/com/stklab/minepro/utilities/SimpleCrypto;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v0, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v3, "AES/CFB8/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_38

    :goto_37
    return-object v0

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_37
.end method

.method private static md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
