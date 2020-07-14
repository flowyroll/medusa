.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xcd0a, %rsi
lea addresses_UC_ht+0x230a, %rdi
clflush (%rsi)
nop
nop
cmp $56960, %rbx
mov $87, %rcx
rep movsb
nop
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0x10f5a, %rsi
lea addresses_normal_ht+0x188e0, %rdi
nop
nop
xor %r12, %r12
mov $127, %rcx
rep movsb
nop
nop
nop
nop
add $48950, %rbx
lea addresses_WC_ht+0x60a3, %r12
clflush (%r12)
nop
nop
nop
add $31257, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%r12)
nop
xor $16751, %rbx
lea addresses_WC_ht+0x1283e, %rax
nop
nop
nop
and %r12, %r12
movups (%rax), %xmm2
vpextrq $0, %xmm2, %rdi
nop
xor $23221, %rdi
lea addresses_UC_ht+0xcd0a, %rsi
lea addresses_D_ht+0x10e0a, %rdi
sub $28613, %r8
mov $62, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x1b3be, %rsi
lea addresses_D_ht+0x50a, %rdi
and %r15, %r15
mov $119, %rcx
rep movsb
and %r12, %r12
lea addresses_WT_ht+0x1e38a, %rsi
lea addresses_D_ht+0x1a90a, %rdi
nop
nop
nop
nop
nop
mfence
mov $72, %rcx
rep movsq
nop
sub %rax, %rax
lea addresses_A_ht+0x1bd0a, %rsi
lea addresses_D_ht+0x1030a, %rdi
nop
nop
nop
add %r15, %r15
mov $4, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0xc0a, %rcx
add $40034, %rsi
mov (%rcx), %r8
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x1bd2a, %rsi
and $8988, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
and $0xffffffffffffffc0, %rsi
movaps %xmm5, (%rsi)
nop
cmp $24883, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rsi

// Load
lea addresses_WC+0x1060f, %rsi
nop
nop
nop
nop
and %r12, %r12
vmovups (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
and $35116, %rbp

// Load
lea addresses_WT+0x1a66e, %r15
nop
add %r13, %r13
vmovups (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
sub $44159, %r13

// Load
mov $0x2e548f00000004aa, %r13
clflush (%r13)
nop
nop
nop
cmp $42607, %rcx
mov (%r13), %r12w
nop
nop
nop
nop
xor %r13, %r13

// Faulty Load
mov $0xd0a, %r12
nop
and $32314, %r13
movaps (%r12), %xmm0
vpextrq $0, %xmm0, %r8
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 340}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
