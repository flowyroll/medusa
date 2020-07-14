.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1ca57, %r15
nop
nop
nop
nop
nop
dec %rbp
movb $0x61, (%r15)
nop
nop
nop
nop
nop
sub $17283, %r9
lea addresses_WT_ht+0xb3d7, %rsi
lea addresses_A_ht+0x14797, %rdi
nop
nop
nop
nop
nop
and $30276, %r11
mov $107, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $6487, %r9
lea addresses_A_ht+0xf17, %rsi
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %r9
movq %r9, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x190e7, %rsi
lea addresses_A_ht+0x12aef, %rdi
nop
nop
nop
nop
nop
add $55899, %r11
mov $28, %rcx
rep movsq
sub $8692, %rsi
lea addresses_A_ht+0x16f97, %rsi
lea addresses_D_ht+0x537, %rdi
nop
nop
nop
nop
nop
and $28617, %r15
mov $60, %rcx
rep movsb
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x15a03, %r9
clflush (%r9)
add %rcx, %rcx
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
dec %r15
lea addresses_normal_ht+0x189eb, %rsi
lea addresses_WC_ht+0xb197, %rdi
clflush (%rdi)
nop
dec %r12
mov $86, %rcx
rep movsw
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0xf097, %rsi
lea addresses_UC_ht+0x1df97, %rdi
nop
nop
nop
xor $32525, %r15
mov $66, %rcx
rep movsq
nop
nop
nop
inc %r11
lea addresses_D_ht+0x13397, %rsi
lea addresses_A_ht+0x3617, %rdi
nop
nop
nop
nop
nop
and $46506, %r12
mov $27, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rbp
push %rdx

// Load
lea addresses_WT+0x1497, %r10
nop
nop
nop
nop
nop
dec %rax
mov (%r10), %r12d
cmp $29585, %r10

// Store
mov $0x588ed20000000597, %rbp
nop
nop
cmp %r11, %r11
movb $0x51, (%rbp)
nop
nop
xor $34022, %rbp

// Store
lea addresses_US+0x2805, %r8
nop
xor $40855, %r10
mov $0x5152535455565758, %r12
movq %r12, (%r8)
nop
sub %r8, %r8

// Faulty Load
lea addresses_PSE+0x19797, %r8
nop
dec %r10
vmovups (%r8), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'33': 98}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
