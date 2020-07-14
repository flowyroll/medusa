.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xc01a, %rsi
lea addresses_UC_ht+0x2efa, %rdi
nop
nop
nop
nop
add $54404, %r14
mov $36, %rcx
rep movsl
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0xf804, %rsi
lea addresses_WT_ht+0x1297a, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $26, %rcx
rep movsb
nop
nop
nop
nop
add $26074, %r14
lea addresses_normal_ht+0xbc3a, %rsi
clflush (%rsi)
nop
nop
nop
xor $16205, %rdx
mov (%rsi), %ecx
nop
nop
nop
nop
nop
cmp $9347, %rsi
lea addresses_WT_ht+0x17840, %rdi
clflush (%rdi)
xor $253, %r12
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
xor $43009, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r8
push %r9
push %rdx

// Store
lea addresses_UC+0x6e76, %r14
nop
nop
nop
nop
add $47959, %r12
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
and $2759, %r9

// Faulty Load
lea addresses_A+0xfefa, %r8
nop
nop
nop
nop
nop
cmp $46036, %r10
mov (%r8), %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rdx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 10870, '52': 116, 'ff': 1784, 'd4': 1, '48': 541, '06': 6, '2a': 4, '98': 3, '46': 70, '42': 2, 'c2': 6, 'cc': 2, 'b8': 1, '44': 10, 'ee': 1, '8c': 2, '92': 3, '1e': 5, 'e4': 1, '6a': 3, 'f2': 1, 'bc': 5, 'de': 1, '7e': 2, '12': 5, '54': 2, 'a8': 3, '3a': 2, '22': 5, '02': 3, 'f0': 3, 'e2': 3, '0e': 4, '4c': 3, '1a': 3, '64': 3, '7c': 2, '49': 19, 'fc': 1, '1c': 5, '4e': 1, 'ec': 3, '10': 3, '0a': 1, 'e8': 2, '28': 5, '20': 4, '04': 2, '84': 1, '80': 8, 'c6': 3, '96': 2, '26': 3, '32': 5, 'be': 2, '68': 5, 'a0': 3, 'd8': 2, 'd2': 1, '7a': 2, '08': 2, 'd0': 1, 'aa': 3, '8a': 1, 'ea': 4, 'dc': 1, '2c': 1, '16': 3, '9e': 1, '6c': 6, '76': 2, '90': 3, '62': 2, '0c': 1, 'fe': 3, '72': 1, '36': 3, 'e0': 2, '60': 1, '3c': 1, 'b4': 1, '3e': 1, '30': 3, 'a2': 3, 'ae': 2, 'a6': 1, '50': 3, '94': 2, 'ba': 1, 'c4': 2, 'f6': 2, '34': 3, '8e': 2, '82': 2, 'ac': 1, 'fa': 1, 'c8': 2, '78': 1, '86': 1, '9c': 2, '74': 4, 'da': 1, '38': 1, '14': 1, '24': 2, 'b0': 1, '5c': 1, '18': 1, '2e': 1}
00 00 00 52 00 00 00 00 00 ff ff 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 00 00 00 00 00 ff 00 00 00 00 00 00 d4 00 00 00 ff 00 00 00 00 ff 00 00 ff 00 ff 00 00 00 00 00 00 00 00 48 00 00 00 ff 48 00 ff ff 00 00 48 00 00 06 00 ff 00 00 ff 00 ff ff 00 48 00 00 00 00 2a 00 ff 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 98 00 00 00 00 46 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 ff 00 ff 06 ff 00 00 00 00 00 00 ff 00 00 00 00 ff 00 00 42 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 48 00 00 00 ff 00 00 c2 00 48 00 00 00 00 00 00 00 00 00 00 00 00 cc 00 00 00 ff 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 ff 00 00 46 00 00 00 ff ff 00 00 00 00 00 00 00 00 00 00 00 ff 00 06 b8 00 00 00 00 00 00 00 00 00 00 46 00 ff 00 ff 00 00 52 00 00 00 00 00 ff 00 00 ff 00 00 ff 00 00 ff 00 00 44 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 ff 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 ff 00 00 00 00 00 48 00 00 ff 00 00 00 00 48 00 00 00 ff 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 ff ff 00 00 00 00 00 48 00 ff 00 00 00 00 48 00 00 00 00 00 00 ff 48 00 00 00 00 00 00 00 ff 00 00 00 00 00 ff 00 ff 00 00 00 ff ff 00 00 00 00 00 00 00 00 00 ff 00 00 00 48 00 00 00 00 ff 00 00 00 00 00 ff 00 ff ff 48 00 00 ff 00 00 00 00 00 ff 48 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 48 00 ff 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 ff 00 ff 00 00 00 48 ff 00 00 00 00 ff 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 ff 00 00 00 48 00 00 00 52 00 00 00 00 00 00 ff 00 ff 00 52 ff 00 ff 48 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 ee 00 00 42 48 00 00 00 00 ff 00 00 00 00 00 00 00 00 48 00 00 00 ff 00 00 00 8c 00 00 00 00 00 ff 00 00 00 00 00 00 00 ff 00 00 00 00 00 48 00 00 00 ff 00 00 ff 00 00 00 48 48 00 00 48 ff 00 00 00 00 00 48 00 ff 00 00 00 00 00 00 00 00 00 00 46 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 ff 00 00 ff 00 00 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 92 00 00 00 48 00 00 52 00 00 ff 00 00 00 00 00 00 ff 00 00 00 48 00 00 00 00 00 00 ff 00 00 ff 00 00 00 00 00 00 00 00 ff 00 48 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 ff 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 06 00 00 00 00 ff ff 00 1e 00 00 48 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 48 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 52 ff 00 00 48 00 00 46 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 48 00 ff 00 48 00 00 00 00 00 00 46 00 00 00 ff 00 00 00 00 00 00 ff 00 ff 00 48 00 00 00 00 00 00 00 00 e4 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 00 00 00 ff 00 00 00 00 00 00 00 ff ff 00 00 00 00 00 00 00 00 00 48 00 00 ff ff 00 ff 00 00 00 00 00 00 00 00 00 52 00 ff ff 00 ff 00 00 00 00 00 00 00 ff ff 00 ff 00 48 00 00 ff 00
*/
