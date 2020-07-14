.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x19315, %rdi
nop
nop
nop
nop
nop
cmp $9509, %rbp
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
nop
nop
add $58758, %r15
lea addresses_UC_ht+0x15c05, %rsi
lea addresses_WT_ht+0xe395, %rdi
nop
nop
and $33965, %r13
mov $53, %rcx
rep movsl
nop
nop
inc %rbx
lea addresses_normal_ht+0x14615, %rsi
lea addresses_normal_ht+0x35f5, %rdi
clflush (%rsi)
nop
nop
nop
xor %r12, %r12
mov $94, %rcx
rep movsl
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x1e515, %rsi
nop
nop
xor $7433, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
nop
add $51007, %rsi
lea addresses_WT_ht+0x1da15, %r12
nop
xor %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x6fc9, %rsi
lea addresses_WC_ht+0x7115, %rdi
nop
nop
nop
xor %r12, %r12
mov $66, %rcx
rep movsl
xor %r13, %r13
lea addresses_A_ht+0x2185, %rsi
lea addresses_normal_ht+0xfb15, %rdi
nop
and $12188, %rbp
mov $32, %rcx
rep movsq
nop
nop
dec %r13
lea addresses_WT_ht+0xad95, %rdi
and $34851, %rcx
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x17fb5, %r13
nop
nop
nop
and $19372, %rcx
movups (%r13), %xmm1
vpextrq $0, %xmm1, %rbp
xor %r13, %r13
lea addresses_A_ht+0x9c95, %rbp
clflush (%rbp)
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rbp)
sub $16690, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rdi
push %rsi

// Faulty Load
mov $0x2e231c0000000b15, %rax
nop
nop
add $36726, %r12
vmovups (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'49': 11, '00': 3178, '47': 56, '45': 10, '44': 953}
00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 44 44 44 00 00 00 00 00 44 00 00 00 00 00 00 00 44 44 00 00 00 00 44 44 00 00 00 00 44 44 00 44 00 00 44 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 44 44 00 00 00 00 00 44 00 44 00 00 44 00 00 44 00 44 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 47 00 44 00 00 00 44 44 44 00 00 44 00 44 44 44 00 00 00 00 00 00 00 44 00 00 44 44 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 44 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 44 00 00 44 00 47 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 49 00 44 44 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 44 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 44 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 44 00 44 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 44 00 44 00 44 00 00 44 47 00 00 00 44 00 00 00 44 44 00 44 44 45 00 00 44 00 00 00 44 00 00 44 00 44 00 44 49 00 00 00 00 00 00 44 00 44 44 00 00 00 00 44 47 00 00 00 49 00 00 00 44 44 00 00 47 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 00 00 00 44 00 00 44 00 44 00 44 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 49 00 44 00 44 00 44 00 44 44 00 00 44 00 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 44 00 00 00 44 00 44 00 00 00 00 00 44 44 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 44 44 00 00 00 00 44 44 00 00 44 00 00 00 00 00 00 00 44 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 47 00 00 44 00 00 00 00 44 44 00 00 00 00 00 00 44 44 44 44 00 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 44 00 00 44 00 44 00 00 00 00 44 00 00 44 44 00 00 00 49 00 44 00 47 00 44 00 44 00 00 00 00 00 00 44 00 00 47 44 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 44 00 44 00 00 00 44 44 44 00 00 00 00 00 00 00 00 44 00 00 44 00 00 44 00 00 00 00 00 00 44 00 00 00 00 44 00 44 00 44 00 44 00 00 00 00 00 44 44 00 00 00 00 44 00 00 00 00 00 00 47 45 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 00 00 44 00 00 44 00 00 00 00 00 00 44 44 00 00 00 44 00 00 44 00 00 00 00 44 44 00 44 00 44 44 00 44 44 00 00 00 44 00 44 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 44 00 44 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 44 00 44 44 00
*/
