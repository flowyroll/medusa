.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x512e, %rsi
lea addresses_UC_ht+0xc36e, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $46, %rcx
rep movsq
dec %r9
lea addresses_normal_ht+0x1e36e, %r10
sub $54092, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
xor %r9, %r9
lea addresses_D_ht+0x422e, %rsi
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%rsi)
xor $25165, %rcx
lea addresses_WT_ht+0x11a6e, %rdx
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movb (%rdx), %r9b
nop
nop
nop
nop
add $22999, %rdx
lea addresses_WT_ht+0x332, %rcx
nop
nop
cmp $27110, %r9
movb $0x61, (%rcx)
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0xde10, %r9
and $22962, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r9)
nop
xor %rdx, %rdx
lea addresses_D_ht+0xc182, %rdx
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rdx)
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x1694e, %r10
xor %rdx, %rdx
movups (%r10), %xmm7
vpextrq $1, %xmm7, %rdi
cmp %r10, %r10
lea addresses_WC_ht+0x5b6e, %r10
clflush (%r10)
nop
nop
nop
sub $36210, %rsi
movb $0x61, (%r10)
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x48f4, %rdx
nop
nop
dec %rsi
movb (%rdx), %r10b
nop
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rbp
push %rbx

// Faulty Load
mov $0x21d776000000062e, %r9
nop
nop
nop
nop
add $57522, %rbp
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'2d': 3, '4c': 1, 'ce': 3, '3a': 1, 'a0': 2, '92': 3, 'd9': 6, 'd5': 2, '72': 3, '86': 1, '36': 2, '40': 3, '6b': 2, 'b4': 1, 'd1': 2, '89': 2, '30': 2, '51': 55, '02': 4, '66': 2, '7d': 3, '87': 1, 'eb': 1, '1e': 2, '04': 2, 'e7': 2, '0f': 1, 'ee': 1, '71': 3, '23': 2, '43': 6, '95': 3, 'f5': 1, '1a': 1, '29': 1, '50': 77, '00': 21579, 'b1': 1, 'b8': 1, 'cd': 4, '56': 4, '42': 3, '2e': 2, '0d': 2, 'cb': 2, 'c0': 1, 'fe': 2, 'f7': 4, '9f': 4, '69': 4, '5e': 3, '1b': 4, 'c3': 1, 'aa': 1}
00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0d 00 00 00 00 0d 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 d1 00 00 00 00 d1 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 95 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 95 00 00 00 00 00 00 00 00 00 00 00 00 00 95 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f7 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f7 00 00 00 00 00 00 00 00 00 00 f7 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
