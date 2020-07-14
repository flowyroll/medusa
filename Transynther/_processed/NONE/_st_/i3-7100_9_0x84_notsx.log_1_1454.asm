.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1dbfe, %r11
nop
nop
nop
add %r12, %r12
mov (%r11), %eax
nop
nop
dec %rdi
lea addresses_WC_ht+0x1af1e, %rsi
lea addresses_WC_ht+0x720e, %rdi
sub %r13, %r13
mov $125, %rcx
rep movsb
nop
nop
nop
add $28927, %r11
lea addresses_D_ht+0x102de, %rcx
nop
nop
nop
nop
and %rax, %rax
movb $0x61, (%rcx)
inc %rcx
lea addresses_UC_ht+0x1bde, %rcx
nop
xor $32641, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
sub $47902, %rdi
lea addresses_WC_ht+0x2eca, %rsi
lea addresses_A_ht+0x93de, %rdi
nop
nop
nop
nop
and $16900, %rbp
mov $123, %rcx
rep movsl
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0xd9de, %rdx
nop
nop
add $64561, %r14
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
and $64986, %rdx

// Store
lea addresses_D+0x13958, %rdx
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movaps %xmm1, (%rdx)
nop
dec %rbp

// Store
lea addresses_US+0x183de, %rsi
nop
nop
xor $34936, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movntdq %xmm2, (%rsi)
nop
nop
and $19205, %r10

// Store
lea addresses_US+0xcc5e, %rsi
nop
nop
nop
nop
sub $49568, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
nop
nop
dec %rsi

// Store
lea addresses_A+0x91e, %r10
nop
inc %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
add $13048, %r14

// Load
lea addresses_WC+0x9a7e, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub $39396, %rdx
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_PSE+0x1d76c, %r14
clflush (%r14)
nop
nop
nop
nop
xor $51219, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movaps %xmm1, (%r14)
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Faulty Load
lea addresses_A+0x1c9de, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov (%rdi), %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'58': 1}
58
*/
