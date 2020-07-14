.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x17a31, %r11
nop
nop
add %r9, %r9
mov (%r11), %r10
nop
add $20323, %r14
lea addresses_A_ht+0x1cd3, %rsi
lea addresses_A_ht+0x18b31, %rdi
nop
xor %r8, %r8
mov $20, %rcx
rep movsl
nop
cmp $54151, %rsi
lea addresses_WC_ht+0x1ec89, %r8
clflush (%r8)
and $16190, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
sub $11385, %rdi
lea addresses_normal_ht+0x11531, %r10
clflush (%r10)
nop
nop
nop
nop
nop
dec %rcx
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x67f1, %r8
nop
nop
add $44774, %rdi
movl $0x61626364, (%r8)
nop
nop
cmp $7733, %rdi
lea addresses_D_ht+0xbec1, %r8
nop
nop
inc %r11
mov (%r8), %r10w
nop
nop
and $39338, %r8
lea addresses_A_ht+0x13101, %rsi
lea addresses_D_ht+0x5531, %rdi
nop
nop
nop
nop
nop
and $13631, %r8
mov $52, %rcx
rep movsb
nop
nop
inc %rsi
lea addresses_WC_ht+0x12161, %rsi
lea addresses_WT_ht+0x16ce3, %rdi
nop
nop
add $37363, %r9
mov $125, %rcx
rep movsb
nop
nop
nop
nop
add $6955, %rsi
lea addresses_UC_ht+0x7931, %r9
nop
nop
nop
xor $39120, %rsi
mov (%r9), %r14
nop
add %rdi, %rdi
lea addresses_UC_ht+0x1df41, %rsi
lea addresses_UC_ht+0x9f31, %rdi
nop
nop
nop
dec %r11
mov $124, %rcx
rep movsw
nop
dec %r8
lea addresses_A_ht+0x1a331, %r9
clflush (%r9)
nop
nop
inc %r11
movups (%r9), %xmm2
vpextrq $1, %xmm2, %r10
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x1cb31, %r15
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r15)
cmp %r13, %r13

// Store
lea addresses_WC+0x5737, %rbp
add $31249, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
nop
cmp %r9, %r9

// REPMOV
lea addresses_WT+0xd131, %rsi
lea addresses_A+0x1975d, %rdi
nop
nop
nop
and $17695, %rdx
mov $35, %rcx
rep movsb
nop
nop
and %r13, %r13

// Faulty Load
lea addresses_RW+0x1cb31, %rbx
nop
nop
nop
nop
cmp $13177, %rdi
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'32': 1}
32
*/
