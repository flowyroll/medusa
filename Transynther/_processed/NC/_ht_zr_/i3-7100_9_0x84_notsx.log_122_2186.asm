.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xc211, %rsi
lea addresses_A_ht+0x481b, %rdi
nop
nop
nop
nop
add $33922, %rbp
mov $94, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x1641b, %rdx
nop
nop
nop
nop
add $1573, %r12
vmovups (%rdx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
nop
add $54373, %rbp
lea addresses_A_ht+0x1e21b, %r12
nop
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
sub $49176, %rcx
lea addresses_A_ht+0x1961b, %rsi
lea addresses_UC_ht+0x1671b, %rdi
nop
nop
nop
nop
cmp $8800, %r14
mov $86, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $49474, %rdi
lea addresses_WC_ht+0x1425b, %rdx
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movl $0x61626364, (%rdx)
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x1e35b, %r12
nop
nop
nop
nop
nop
xor $12480, %rdi
mov (%r12), %cx
nop
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x1869b, %r12
nop
nop
nop
nop
nop
xor $11301, %rcx
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xaa33, %rsi
lea addresses_A_ht+0x21b, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %r12
mov $87, %rcx
rep movsl
nop
nop
nop
nop
nop
add $28192, %rbp
lea addresses_WC_ht+0xb41b, %rsi
lea addresses_WT_ht+0x15f9b, %rdi
nop
nop
nop
xor $8278, %r8
mov $6, %rcx
rep movsw
nop
nop
nop
xor $15499, %r14
lea addresses_UC_ht+0x1dc87, %rbp
nop
nop
nop
and $45671, %rcx
movw $0x6162, (%rbp)
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x1cc1b, %rbp
nop
nop
nop
sub $64180, %r12
movb $0x61, (%rbp)
nop
nop
nop
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rdx

// Faulty Load
mov $0x5b2be4000000041b, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
add $11770, %r15
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'47': 4, '44': 11, '48': 1, '49': 22, '45': 79, '00': 5}
44 45 45 45 45 45 00 49 49 45 45 45 45 47 44 49 45 45 45 45 45 49 45 45 49 49 45 44 49 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 47 44 45 45 45 45 45 48 49 45 44 44 45 45 45 45 49 45 49 49 45 45 49 45 45 49 49 45 45 44 00 49 45 49 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 44 49 45 45 45 45 44 45 00 47 45 00 49 45 45 45 45 45 49 44 45 45 00 47 45
*/
