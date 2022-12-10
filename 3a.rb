#!/usr/bin/env ruby

total_priorities = DATA.each_line.inject(0) do |total, line|
    first, second = line.chars.each_slice(line.length / 2).map(&:join)
    common = first.chars.intersection(second.chars).first
    
    priority = if common.match?(/^[a-z]$/)
        common.ord - 96
    else 
        common.ord - 38
    end

    total += priority
end

puts total_priorities

__END__
pqgZZSZgcZJqpzBbqTbbLjBDBLhB
wHptFFsHttHFLMDQDFTbbj
fVfvsstwPHwNwfNGfHWRSnlpClcJzCWCzddSrddg
bdgHbZJHgMHgJgJctDtVssVcpFtq
rNNQqBSzTcBPTDsP
GWNNrhGnNnWNzRfnRQRbhCdqHMbdmbZddbmCmd
BSBDzrSwrqccDDwbfcBjsRwggClslTRWGWGMFlsF
dnhVhLJtzNZdgCRlsTGWCRJG
ZHZdNzptLNtPhPdnprPbbDBrSqrSQPjbqD
rlSwlrGvwTTSwSggCJGQJdhVgJGQ
jcrHrMWfNHNzQgVH
WbfjmBMrBrrmLtqMbwwsPTvPpwvBPFPsws
NRNcHzbzbMRcNPjPrrlBPlbtBl
CZwVCCpWggqprwtlHlssHtPr
WpmLghCVCqCnmVTLnccRQvvQQHDhNQzzzc
NvGTmNGDJsrCmCWPHpCP
nqfVfnFQnZQfFqzMZBPtppcBPPCBptcrbF
fhRSSVfqMZZhMnQfjVzShNNlLvldsNDdvvljGpllDT
JGRNWRGJbGmCGRbLmGpqShhcQpQgCcncScSQ
FFdtjvvpvVFnQhhnQhgf
ltvjjtjHlzBtWRmNPLZRHLpH
FFCJFsvgLsjLgWzJFWJgGwBDbwnbwlDddqffnjnlnd
pTpTMQpMZHQhZQpHPZMmTMlwhDNNddbnDqdDwwlbVNVd
SHpmrHPZHQpmvFrqsFvgCsRq
TtWpWhQlVZrVptJhtrtdbLPDPbjFbCCWCvFFbLSN
zMGlnlsgSSvjjGSF
msznlgcwMnRwznmBqTZQJrddhfQJtBJtZQ
mwTwLftmqqSHWfCfLHjWftBthNNNVrlcFRVNrNrRTrMgrRNg
pvJPJQPGPPzbpVpVlMBVchFl
bzQPQbQQdsDZPDGJnBGnPGnjHDttqqqqmCjftLCmWmfftC
ZNpfdHcccTfdwfMFNjBttMgMbBnvlvjBmB
QVPsGzhbszRLRrgvtgjWgljlRtgt
VJrVLsSrzLzGPChVGzbrrfpTSHFfDDHSdpZFfHpDTZ
NPpvDbmbsmdbNvQvDdWQpmWSnnQCLBnCcQSCnnLlwCBlZz
jggrtGTFhtGfjhDVjrjgMftFwnZcwwBCnzzVwBBwSZcVwLSw
JfHftHhgftgFJWPdPDWRPDvPJv
ZSLLZJGglDSVNDGGGgGgngGmHrfLzmHvvjfjwLhHvLfHHr
QqFWszFMTQFdFPMqBmWBHvfhCwCjhHff
pTsdppTMPtqqdbnlNVzJVbSSnbZR
gBqDccrrJDwmpTWHHTdWMPWWZFHF
RNfnfSwRjlLSWjQMHWvQZtvH
GRLbnzNnzVRLCqhwzwBmJrmc
CcGnZGnGlRncsspmFmmcmGRJJzCDTzjLBSDfqjwDDzDLDB
hHrNdPWhrbPdhPgVWvvrgWdfwjfNzSqfqjLqzfBTzJzJTz
HHQhhvMWbbdRswmlsmwsQc
rrwhpZPrccRpQdcFDJNqhtqtqMLhqfMh
lTtTllgbzTlJsmDMvbLbsf
VVWBTgzlzgGnngrtQRQRtCtwZRQB
HGnGvVdLhlFcmvPWmT
jwBLqZgjrtjqmFsQTscPQs
ZBNZtwLwztLpMrfZBLMdbdnfSRVVfnGbnfDVGh
LmBBBzQrBgBhmmggmtdVdhJNMHNdhsHNDd
ScSZbRplCcMnSpvCfCCZcpPwtJPNtHPHNVVNtPddwlNH
CpvpZGfnffSpnvRSSbcfScQBWrMWmjrmFFBzTGQWjMmL
sljSjSgsjcCLllsjVgSjCtspQwvNNhdFwFQvwpbtmhwhpN
hDqqWzGRHHfRrJnrWrfWfHBdFmBFmBbdBGBpwmFdFpww
TDnDHZrWWHhTjPClClSP
wGNQGQDGjqqmwHHs
MWvvrzgfsdWsvMrSdqJqcpgHgnqLFLnjpH
fvsPMsPdrTZhChNDhbhPVN
sbMgDDtttVvpMtcJsgcGGBBfGLBSLclQTGPS
CWHWzhhRRHjqRmSGPfBSzJfSBnBB
HjjRHWFWhRRwHNmCCRHhhFdNDNrdptMstJvsbMDtVptd
RnSwRsLsnSswjDDDBJPrJv
cpzCzlczHTJVQhvBQlDVDj
WmGzqTmHSsffqqnJ
vQSPHMwpmpQMLGfTPVLRPRVP
hsWhnncsJqbGjGfcfBMMRR
sqdNWqqghbsJslgsJqgWllMWDppSvNCHQHDSSHrHrHCSvvCQ
ZWWnWMmmndQZmffcdZcmssQqrsptVwwTtQHTCTHH
SvvrPzvvFDzGzTszpGGwHT
vrRLjjrPhLjrjPDSfdcMZnmdcmJcfcRf
HpqWhDJjzmcTSbmMBVBb
nCzfLtFnZZrcbcVVfTBfsc
FtRFzgrRtnRzrFwzDjljpjgHNJDlNlhN
gtNRRSSrRmjshHmm
PQDMwPwMppcQQcvCFlhLhGmjflctlnHGjf
QwDMFFdtwFDQJZZZNqSqJSqBgBqTNJNg
cddzbbzQflTDcDfRbcfbJVsplVsChNghHNsSsVpn
FBWFWjFFCjWPBSPPJsVpppPSVH
CrCwvjWvmqmvrBvFwZRGQQDDcGTcfbddZdRc
ZBQqdGLFmmzDmTZz
PvrVMvGgWmwSmllglS
NrfGnvWWPhfpspsGvLJBsFBbqJCbdQcLBq
DrwTrlfGThhQTpDdWSWgdgwLLgBSZH
bqbPRVRmzJCLWSgCzCLH
jRtbNVtNjNqRqsJtbjbMDQHQGlchfQpfsTcHpGHr
tMnRcnpDcZtpQDSCCsGGHvcGPGqGsr
mzJmjWJNlbfmbhzVCCPmZrCZqPGCgZ
JWhzjJBdWnMLZtSBTw
tvdLttzvtHLztnQpssdTPbMqbqMTdTss
jhSRGNjjSjhSDCNhRgRgclNjmfZTPnbTMqJJfqqsbMflTfMs
WnCjcjDRCChSNSCNDjNhGVDtQvVLHzFrpFwFrHFQQwQpzp
fLbLLLLQhVPhBVmDwmCfwsdwwDps
GNtctFTSrrJqGGpHFcTJFTwsslwmlmWsdsqRRCmqwdWs
ppctFTTSgHcSrGrrTGFcrrnhhQbPLbQZgzLvQQVVvZvLhv
mBBWnnBbBCtssmRThRDllR
wfwFQcpHFpddFrwpGcHSHdcjQZZlqqDTTjZqssRhWllssj
dWfrcSGFpgrSzFgMbCPNPLtCtVMV
llLlGLJJMjJMGVSvVMSLRRHvjCZtgZccttnmbCtdCcmCCztn
sBQNqPhsrrqrrwrsppsHswsZcmnNCzdZtbgntcNgcctnCt
WWFBBsPwpWPwBBHpFFrWGRMRLlJfJVMJRJLWSJ
vgMvQnPMntnSQPSgMvSMpNJfJDNNRpfZmGQmbDND
HlbjHHBLjCHGZGpfJLpfwm
qdHWqBbbbjrTzdqFqssvtPMSSFFg
TGDfDHSgtTzPPbnCtnNtVn
WQrWMFpMWMQbCVNPRWVWWv
pdpMMrhrprQshlMFjZpdjZMgmlGJJGlGDBmgmHgmJCSBHG
zWWBjZZjWPFFPPnBCVdsqmnCdSLn
rJvpbvbpGgTGrNJGGpRRhsCqSsLhnsmTVnSLTLHh
gNNNJDbpvGNfvNSDPPWQWWPZZWtjlQfc
RRVbWWWvvZVWmsFSsDNbHsDSsg
CrTwJQJpJpCCwvlJQTTPsfzDgfwNhszfszFhzFDh
ttQJtvjpPvcqTllJTPtPRGMGRGLWdVZLVZjWdMjj
NnPCTQWMMQNNNWwWnMzpHczzsZcCscddHdGs
mqRgqqVlLgqmfVzcGpzzSHGZcgcz
tjmZjZmhqftlJRJhlTMPTPQbrPBBWnhnnT
hvTQqpvTqjvhpjnCqmCnSDSFDWFFLSSSWDnSVL
tZwGgsfPcltgcZltRgNSDSSSSldmWMLWFVHd
GrZtwRPbGwwPcGRsZGtRtgQJJhCjpzmTBTvJzJrjvzQp
rwmwqDWwfDtztnFGBB
LPdpdVcdPGvPVgZsPtlhTTtthHBhHF
dRdCjvpCRpjvCMZgvLgRVJJSWMqmbwQJbMWGWQNbbQ
CMCcMcDGzBGPmBmznTNbnGbrswNTwTvN
SSHVWZphqWWJJzNsbnFwFVNjbz
flLQqHzzgtQdcDRB
mdzvFtllBgFttGnvfMwMVRRZCThSNZVhMd
pDTrDHjWWJPqjDjDSMqNwSZRZhNSRNCZ
jpcTpQPWLLpDTLcTrPjPDcjzzFLFzvgLzlzfvGFgfmgFzF
fQVVPzBpFVVrtrsJ
PldSLNSmWwMCcCMMcCNN
mSPlldllmPdRnLRwmbnLwmwvTjBTghTHQjfgjpZHpfHHfZbZ
pmfMcfprMqMrZZJcMZMGWTsFCVCTVPPsVTWCGPDP
vrvvvLRbBNNBbvBbjBHbQhgDslPTWsPTlFDsFTFwTWlDVQ
hgjznNBjHHgrhRHgrRLRnRfSSJmdqMfffzqJptdmmmdd
nRnPlCRPWPMFqwPLwq
tBGfbSbHtBVQgrbrqfTFFLvTNLLNGTGMLdws
bgHVtBDtqnqqlJRD
SdSJrHssFBSVsNtMMdRWnTRhRl
vcvfDvgvcwvFRlbnwWRlMhtn
DDDqcqFZQPgcgcfvDjLDfVrsSVrHBLJVpLpCSppGpS
gJGTFLTdrpLdBcWBvnllvlMvMC
RRqbbQhwNZZwQRPrSZWnvHSZWSvSZC
fQDNRsrsQzfbDrbsqwdtpgJVjdJdpVfJFLFF
DzWqFvqpqFSCSzGRGmwfntGjmR
cbhZNJQBtgMHJbJcNcrmfhrRrswmfRwnVrhG
bJNgbNdJBBPMHbcMNMWWvSFpDLFvCStqpLdv
sLsHTsTbRLRwqssHwHjFrPDwJDppzFDJmmcrPJ
BnZGBlMZnQSgSnvVSMmJzPDCzFcrLPPJmpDG
BgBffVLhQLgvnBRRssfqdfHbHdNT
HRPVmjqBqVjVRRPmcPmJjbDgLDDshbfRLlfbfLbhlL
rtTzSMSMFpTzfgDzzgsLfLHZ
rNpGpSSHwMTrrdHGNtTPmVjnGGjVjmBGmmBjJB
DBqDQDQHSFlHsFnN
MfLfwwLMWGLrWMMnpSlsnGJJlbFVjV
gRhMZzhrFLWQvTPqTPcvvh
NwwsHwtnFCtzcPdbvrQbBqclQq
VmZLLTLfVpwMBrVVqqMM
mgJDjTgWgLWDppJZJTWZmSRzCtRHhGGwHNzshGFFCSRt
RGCCDRdFZdRCMzzGCDGCmGHMfqbNNNLQLfFqnnqnNQqVPnQn
glgcrwrJjJccBwdSfnSnVqrqQVVnNq
jvtBsjstgstjltBcWzTGGddHTWDTZCmDGm
HJHGZZHnctSSDhZtmZ
MjjQFSvQlRjSdRqdqvVSqCCPtpRpPPDfDmfPbbpphC
SNsWqMNvFFqdqVMgwwBHrGHnHgcWTJ
jBcbjSmSBbbCcPcMjmbzFPhDMDfrfGRhGQRMnGQfdrDh
wHlqwlqpwZqcwVlqHtJVJLTdhndTDnhffftTGDTTDdTG
JNllcwpZZlpZJjNzSzSCNjSmFN
FhwRPzmPWmQQmwFPGGMGGRPnRHHVfDbvJlvDlHSvDTDfVHbD
NpjcpCdqpZZvwvJVfDdDHT
twZtqrBrBQBMBPGn
fBFGjbLLFblmbWFmVfBvrvMdMdncnrdNbdQNTr
shZHHRZhtsqJZhHhgZzgJzVJrrSSvrMdMQrNTvMNJQNrdn
szHwgtHtwPzPLpVFpVPLlfLC
mrsrtrWjljjjvwwgNnZfDHJDqTqrHL
FccMPFQcpczpdMPhMqJngNfqfnFgDnnFfg
BdMpdcDPcpjBmlBmVWts
VvwTTlfVlblwwSsbfTdzVqjhzVjpjjqjqpzV
rwCWFGmJrNCmMRHmwRFPmHQQhBLBzdLqBjhLBHZdQB
rFwDrMNRJDJFPRmCvcTcbDsvstTgfTsg
zhRzdRRChHCFGPDRvWRWvWvHpZpscrrmrZrJcmspJmJZFfpM
wQqLtQLtnjbjVnVjbBgjbBnbMZMZJlVpZfJprsMprmGZZZml
jQjjNBLLwjtQBtwwdGGDCHhNzzWDzTPD
DzzQnCMMznFnCdnFFlHtlmhVRtmVVmVhSF
PWrPPRTfLJJtfbtBfV
wsrggZsTwTTWGvDppQMRjjMCjMZp
fTjzZVTlbffCMvjgMpSFWBNBWSFsvBsNNccF
nJdwdPRQqGqbGJQbmmQQhRSBBBSsPPHWNSWFBtDNBsHH
nnQhwwQGdLqqwnZbpfjMfzpzLbLj
jgTgCwgjMgGLhvRrHrHwhvhV
bqSsSsZFZBlFsBlTSppVvVvnVHHvHnhp
qFlbPbFFsWFsBlFWbsbsmzTcMjLmtfcCmcWtgzgm
rrHbfBLbfMcghcmrcCzg
RDStDtvdZRQdJSQWWWdvFSgNvVcnghhmnnzhVPhczPch
ZtJpJttSZStwtttFDQmLGTlqMLqGfwTTGLfTGG
MrfLWwfBwgghvLmNvmHHHGGQHQSSscscVvTV
dDjZjDPJtFRzjdTTsqVjTpqHsGrT
JbFtlbPRJCzffBrgnlMWmg
ZFsbbVLLdZppLFpcJjCCQJlGcQCMZq
TwRtRBdBClCTGlcJ
rwBvBzDvwNNDHLHzfHssdHhS
gdhgftTNGTbpqJqjjgRJ
lcBcMLFzMzLFMzFzPjRBQjQPQpSqhpbp
mzzmZHZZnZwLhtGfddVsNCCnGG
lblbPGSGrTLRwqZLvP
FffCCFzFCWzzvmjRJnRTnZZNJCTqCR
gdhztVjhHMsGvrGVVB
ZJZjJGHZhDJRFJHjDZjhPNFgFmrnVmgVVzVBscnzSg
bwlWtMwtbqdCvlQCplmsqgnVVScnVgmnmzNs
WMWltTtvvCdwCCRPPfTHGcJDfGZL
svqQJLvSSZrZZZCFCBDPDCMTDpPwMWDPCwRw
GnlnGbdldjhzzhpPDTWjmtMwPmWW
HzVbGnnbchblbnbzcQTZBZrQrFSHvLBBJv
MmgMmVpcRDlvbvpHJF
GSGTLTwhwwhzQqTqwjFlbdvdbrlrbrrDnDvHlQ
zLNNNtwGFCMsWsCWNR
tSTDDDftSqSsTDnTtCWNrbFsNJJvbzJbvJ
dhRdVHdMGRgPJbjNPbzgvr
VllQmQdhRHLhhHmLlGzSqSQDDcDBnnBnqDfSct
zBzJWZBLZNNGLsbTvLbmbT
QdtQwfdnPdPTbsRQGhRvbl
pgtPgPjVDnpVnDtPTFFrJJTBCcpcrpCW
GnWMfBfdCGMbjRNpnzvvNLRNVv
FShJDJJscwwszNjvNjNNqZ
tJmccwlcFlFcHlPcHFfdrbBGBGfjCGTfBCPf
GhlcQsZNQZWhpcGhwlPmqnnqnjJjLRnqzJsJLJ
VTMtTtDTbvbMTfvdJqngjmqzdjmJjCLm
vHtbHTDBFvffBPGwLLZBQNNl
bDphJrpbpnBbDrdBvJdDFBMtMlfgtsFSstfGPPgggPGP
RZmNjTZQNVHQHNGSgMsfPlShSs
VmchTLZQLjVLjmTVmQVhTmwVrWJqbDqddBrpnWbvnqrqcnJB
jWWgThWtgSvSSWlJtlShllPcHVnJHPbMHPcPVPbVZrHM
fGdfRsRdNwfRQhnpcZdVhVpbPh
fGhwNBqNjqStFqtj
TSTBrSDlQlTDrrQclrBSLffPvcfcdVjVMGGPLjLL
qnbnbngFGhhhPfjjVffjff
RRWbmgpnmqlrCwwSrwmG
mZZTsdBZVZBZLVHdFmsNnCrCVQQbWvWjWNCnbg
QSffDGwGGrPGWrgN
hflwzltflDpMpDSllcMDhSShdsdZQdLZZdHTssZzmqLzFmLB
LLRJRshLfsJfWnLBTlTBlFzNrnrBBl
qmmVwmdHqmqGHZdHbbqSScdZQTjjpTFFVBBrlDrzDFBTjFjF
wZZwmcbvHgqTmGccmvdCLhCPJsJCPWgMLPtJsJ
TWbbbNbJJjJbqTjtJJjTQCtnGSBndMGCcSZSQwCB
mcfRfrcmrDRrPsdQSGZQGnsSQMnB
DDRLDRDFPpgmpcgPghpfgvRTjbhTVjHljJjzlVzVTlbHll
rPlPrPllBGgJgdJfHgfjJt
pppZVfFDWssMfFVVFMpsMMVmHCRLdcZCRtvLRdCtCJdHRttH
mDMfDFDmnMMmsMFznDFpzswbNbPGwwSGBrGrhrTzThSl
qDNFfCCNWLfWWhqhDGPMMZVwgpCpMbJwJCvV
RdstRRvdtmtPVpppVbVtrp
zzncSRdsTdQTczQBsLvvHNhDWGjDHNLDSG
bNNpcfJcCtNpHFsJsGGjLGzmLjLmGzlFGW
qwqZdnQnQwnhhzmnMWjmNlMzLr
qhwwQSwStJbHNftS
WlfWSwDftzRltBWVlRDlsmBJPcsZPmcJnmPmFhrn
dLQbQbvGTddTvbjQCbLbhmCrZZPPsshPPPrJZrnF
QgFjQHHbMvdRMVllSqfSlf
MDPJBWWPggVlPVDMSljdZNNpwjwbHZpNbDdH
mGmzcThGrtntHhthzGctRbNRNwRNzZwfdZpjpdRj
ThtcvvtThFcnqFQSHgBSVJll
hVqhFLBngHVFtJjtLCBJVSbbPNNbSmfLLTSNSrrLTb
vsdZZpvQdczlMdMvzlcvvdQprbGGTfSbWmzPTgmmGTbmmfGP
vgRZZMgwdgsQZdMBqVhjhJqBhJtRhq
bgFQbMMbTbQhghddFTFGnmSmsNdzHvzSSzlcHsls
fZDjVtfZLqwpqtCfCjCjlvqScrvzqHSzszzSnczr
jpftjCfWCjCfCRZZlpCpjRWQBRTQQbgBBTMbghgbbPGJBJ
VZZrbBVwbbbVVvgbntnggNRJqRRNNccMcNqJcJ
jfDPfDdGGhDGfGFPCcZQqMpRNJhqTcMc
LPfffPHGPDjPFGWSdHPFjWtlBlwvlwBlbtmLltsmvtZb
TTfJDfrJTSrHMcVMJDTfMcMDBQBPwnPlznPszFVBFgzFgnsn
CqtmWNNGBPzwbbwm
htdCthhWGtWWGNZqcZpJjwwHHHMcHZDM
VvjQjQCZLbbSbTPpSHtFzsHzppMfzz
DJrJWBcDcWJWmmcgGRGRGWGDzHHwzdfRHpMztMpfdFdFdzdM
DmBgGDqJNhGcccWmcZLjTPLVLTQhPtvvTZ
qfhvwNDQqwDGdGZZGwPTTw
STsJgsRtJMZPjlsmdpbs
SCTTHTWHNVfHQqqq
djCDgllgjJjDRRNgRlDdBgtpQHfhQTrLLrGBtzrQhpBH
SVcsMGcPSbqSPmLTPHHQTHrftPTr
VcWnsScqSScWcZbMMcSVGbNNlgDRlgCCNgwWvvRJdNdj
mgPllfRgvNmPGQGGsmQNWlpFtnBPFShncTFShtFShnjS
tLLzMJJwwbbdrrMLqLVJMzVZFnpTTFpnCSSpShCjBJhpThph
HMdVwbbLMbDMDVlmDsgtNtNRfgsm
hNsgsgzNZRghPhZBdssPQfzDmQSmmzQGJWzfCDJJ
bblVHvvHHTljwFCfGrvmfmmJBmGQ
THMMFVwqTPRdZptMBP
QvcPGSvQLjmcQWSGWWGjLCNhhqpCdBCNCbJNdVWpCh
rwtLlzZggLHnHlwHRDdVqBbCdqqVVhbqVnVh
zRDzwRrwlRlRTgrDtllmQGLcPjGLccFmTcGSQc
RWlgQlbcWBwzsJggTfhh
GrnLjHLjmLjjGSLjSDmfJJpfThhfSWJPqJqhwz
vLvDDnDNrCVjCmNDbFlBVZdVRQlRbWcb
mTlwFngwmlLlvsmLHmHsLJhJFfcbdpbNcjCNCbpccb
tZRzBRzBBRQzPqGRqrVQtjjfbCMcfMfCMMjVjfCJNd
SDBBPtZZTdnnwSvg
nddNNMMPNBnBNnBTQSShlSHghlDHBr
VcccVmqJsJsjlTmzTDggmHHT
VqLtFCqFJfVtVjsNgPNNMMWNwgtNvn
