.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x14ff, %rdx
nop
and $54824, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%rdx)
nop
and %rax, %rax
lea addresses_WC_ht+0x1260b, %rsi
lea addresses_D_ht+0xabdb, %rdi
nop
nop
sub %r10, %r10
mov $3, %rcx
rep movsb
nop
nop
nop
cmp $39842, %rdx
lea addresses_A_ht+0x1e1db, %rdx
nop
nop
nop
nop
nop
add $22528, %rdi
movups (%rdx), %xmm0
vpextrq $0, %xmm0, %r10
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x111c3, %rdx
nop
nop
nop
nop
cmp %r10, %r10
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rdi
push %rsi

// Faulty Load
lea addresses_US+0x1a3db, %r9
nop
xor $42495, %rdi
vmovntdqa (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'06': 1892, 'e2': 1, 'de': 1, '9f': 19928, '6c': 1, '86': 1, 'fe': 1, '87': 1, '85': 2, '8e': 1}
9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 06 9f 9f 9f 06 9f 06 9f 9f 06 9f 9f 06 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 06 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 06 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 06 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 06 9f 06 9f 9f 9f 06 9f 9f 9f 9f 9f 06 9f 9f 9f 06 9f 06 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 06 9f 9f 9f 06 06 06 9f 9f 9f 9f 06 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 06 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 06 9f 9f 9f 06 9f 9f 9f 9f 06 9f 9f 9f 06 9f 9f 9f 06 9f 9f 06 9f 9f 9f 9f 9f 9f 06 9f 9f 06 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 06 9f 9f 06 9f 9f 06 9f 06 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 06 06 9f 9f 9f 9f 9f 9f 06 9f 06 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 06 9f 9f 06 9f 9f 9f 9f 9f 9f 06 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 06 9f 06 9f 9f 06 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 06 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 06 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 06 9f 9f 9f 9f 06 9f 9f 06 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 06 9f 06 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 06 9f 9f 06 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 06 9f 9f 06 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 06 9f 06 9f 06 06 9f 06 9f 9f 06 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 06 9f 9f 06 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 9f 06 9f 9f
*/
