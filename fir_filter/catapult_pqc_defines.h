#ifdef CATAPULT
 #define PQC_MAIN CCS_MAIN
 #define PQC_RETURN CCS_RETURN
#else
 #define PQC_MAIN int main
 #define PQC_RETURN        return
#endif 

#if defined(KEYPAIR) && defined(CATAPULT)
    #define PQC_KEYPAIR(x) CCS_DESIGN(x)
#else
    #define PQC_KEYPAIR(x) x
#endif   

#if defined(ENCRYPTION) && defined(CATAPULT)
    #define PQC_ENCRYPTION(x) CCS_DESIGN(x)
#else
    #define PQC_ENCRYPTION(x) x
#endif   

#if defined(DECRYPTION) && defined(CATAPULT)
    #define PQC_DECRYPTION(x) CCS_DESIGN(x)
#else
    #define PQC_DECRYPTION(x) x
#endif   
