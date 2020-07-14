.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a9a8, %r15
nop
cmp %r8, %r8
movl $0x61626364, (%r15)
nop
nop
nop
nop
and $24032, %rsi
lea addresses_D_ht+0xf5a8, %rsi
lea addresses_WT_ht+0x15c30, %rdi
nop
nop
and $35060, %r15
mov $10, %rcx
rep movsq
dec %r8
lea addresses_UC_ht+0x141a8, %r8
nop
nop
nop
nop
nop
xor %rcx, %rcx
vmovups (%r8), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
nop
add $64321, %r15
lea addresses_D_ht+0x12968, %r12
nop
nop
lfence
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %r12
movntdq %xmm4, (%r12)
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0xdf12, %rsi
lea addresses_A_ht+0xdfa8, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %rax, %rax
mov $124, %rcx
rep movsb
nop
nop
inc %r12
lea addresses_WT_ht+0x11d08, %rsi
lea addresses_A_ht+0x78c8, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
mov $24, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $2268, %rcx
lea addresses_D_ht+0x17b28, %rsi
lea addresses_normal_ht+0xba06, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $10410, %r10
mov $22, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r8
lea addresses_UC_ht+0x7528, %r12
nop
sub $50680, %r15
movb $0x61, (%r12)
nop
and $31476, %rcx
lea addresses_A_ht+0x11a8, %rdi
sub %rax, %rax
movl $0x61626364, (%rdi)
nop
nop
nop
and $45691, %rsi
lea addresses_A_ht+0x1e128, %rax
nop
nop
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rax)
nop
nop
nop
nop
sub $39420, %rdi
lea addresses_WT_ht+0x126bc, %rsi
lea addresses_normal_ht+0x1c1a8, %rdi
clflush (%rsi)
nop
lfence
mov $96, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x1bdd8, %rsi
lea addresses_WC_ht+0x2324, %rdi
nop
sub $12275, %rax
mov $38, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x5c28, %rsi
lea addresses_PSE+0xc1a8, %rdi
nop
and $46925, %r14
mov $95, %rcx
rep movsq
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_PSE+0xc1a8, %r14
add $6331, %r12
vmovaps (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'48': 4166, '47': 230, '49': 514, '38': 2796, '00': 14123}
49 48 00 00 00 48 00 00 00 38 00 00 48 00 00 49 00 00 00 00 00 00 00 49 48 00 00 00 00 00 38 38 00 00 48 00 00 00 00 00 00 48 00 00 00 00 48 00 48 38 00 00 48 00 00 38 00 00 00 38 48 38 00 00 00 00 38 48 00 00 00 48 00 00 48 00 38 49 00 48 48 00 00 00 00 00 38 00 38 00 48 00 00 49 00 48 48 38 00 00 48 48 00 48 00 00 00 48 00 00 48 00 00 38 48 00 00 00 00 00 00 48 00 00 48 48 00 38 48 00 00 00 00 00 00 48 00 48 38 00 00 00 00 00 00 00 00 00 00 48 00 38 00 00 38 00 00 38 00 00 00 00 48 00 00 48 00 48 38 49 00 48 00 48 48 00 00 00 48 48 48 00 00 00 48 48 38 00 00 00 00 00 38 38 00 48 48 38 00 00 00 48 00 00 00 48 38 48 00 48 00 00 00 00 38 38 48 00 48 00 00 48 48 48 48 48 38 00 38 48 00 00 00 47 38 00 00 00 00 38 38 48 48 00 00 00 38 00 00 48 00 00 00 00 48 00 48 48 48 00 00 00 00 48 48 48 00 00 49 38 00 48 47 00 00 00 00 00 00 00 00 00 38 00 00 00 38 00 00 38 38 00 48 00 38 00 00 48 48 00 00 00 00 00 49 00 00 00 00 48 00 00 00 48 48 00 38 00 48 00 00 48 00 48 00 00 00 00 48 00 38 48 48 00 00 00 00 00 48 48 38 00 38 49 00 00 00 00 49 38 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 38 00 00 00 47 00 48 00 00 00 38 48 00 00 00 00 48 00 38 00 48 00 48 48 48 48 00 00 48 49 00 00 00 00 00 48 00 48 00 00 00 49 48 00 38 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 38 00 38 00 00 00 00 00 38 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 38 00 00 00 00 38 00 00 48 00 00 00 00 00 00 00 00 38 48 00 00 00 48 00 48 48 00 00 00 00 00 00 38 00 00 47 38 48 00 38 00 00 00 00 38 00 00 48 00 00 00 00 47 00 00 00 00 00 00 00 48 00 00 00 48 00 48 38 00 00 00 00 48 38 00 48 48 48 00 38 48 00 00 38 00 38 00 00 00 00 00 38 48 00 00 48 48 00 48 00 00 38 38 38 00 00 00 38 00 00 00 00 00 00 00 00 00 00 00 38 00 00 00 00 38 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 48 00 47 48 38 00 49 00 48 48 00 00 00 00 00 38 00 00 00 00 00 00 00 00 00 00 48 47 00 48 38 00 00 48 00 00 00 00 00 00 00 38 00 00 00 00 48 48 00 00 00 00 49 00 38 00 38 00 00 38 00 00 48 38 48 49 48 00 00 00 48 48 00 48 00 00 00 00 38 00 00 00 00 00 00 00 00 38 00 38 00 48 47 00 00 00 48 00 38 38 48 38 00 38 38 38 48 48 00 00 48 48 00 38 00 00 00 00 38 00 00 00 38 00 38 00 00 38 00 38 00 48 00 00 00 00 38 00 00 48 00 00 48 48 00 00 00 00 00 00 00 00 00 48 00 00 00 38 00 00 00 38 00 48 00 48 00 48 48 48 38 38 38 00 00 48 00 48 00 00 00 00 00 00 49 48 00 00 00 49 38 00 00 00 00 00 48 00 48 48 00 00 38 00 00 00 00 00 49 00 00 00 00 00 48 00 48 00 00 48 00 00 00 49 38 38 00 00 00 00 48 00 00 00 38 48 00 00 00 00 00 00 00 00 00 48 00 00 48 48 38 00 48 00 00 00 48 00 49 38 00 00 00 00 00 00 00 48 48 00 38 00 00 00 00 00 00 00 38 48 48 47 38 00 00 00 00 00 00 00 00 00 48 49 38 38 00 00 00 48 48 00 00 00 00 00 00 48 00 00 38 00 00 00 00 00 00 00 00 47 00 48 48 00 00 00 00 00 48 00 00 00 48 00 00 00 48 00 38 48 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 48 48 00 00 00 00 38 48 00 00 48 48 38 00 00 48 00 00 48 48 00 48 48 00 00 00 00 00 00 38 00 00 00 00 38 48 00
*/
