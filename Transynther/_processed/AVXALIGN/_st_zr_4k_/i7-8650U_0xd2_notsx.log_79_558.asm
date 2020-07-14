.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x84ab, %rbp
dec %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
and $26043, %rdx
lea addresses_normal_ht+0x1522b, %rdx
nop
nop
sub $36932, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
and $57613, %rcx
lea addresses_UC_ht+0x158ab, %rsi
lea addresses_WT_ht+0x36ab, %rdi
nop
nop
nop
xor $40461, %rax
mov $41, %rcx
rep movsq
nop
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x18a3, %rdx
clflush (%rdx)
nop
cmp $64646, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
and $0xffffffffffffffc0, %rdx
vmovaps %ymm7, (%rdx)
nop
nop
nop
nop
nop
add $24357, %rax
lea addresses_A_ht+0x14013, %rsi
nop
nop
nop
nop
nop
inc %rdi
movb $0x61, (%rsi)
cmp $40675, %rcx
lea addresses_A_ht+0x10043, %rsi
lea addresses_WC_ht+0xe43f, %rdi
nop
xor $9667, %rbp
mov $111, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $5586, %r12
lea addresses_A_ht+0x1555f, %rsi
lea addresses_WT_ht+0x137eb, %rdi
add $23258, %rax
mov $56, %rcx
rep movsl
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0xeaab, %rcx
and %rbp, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
and $0xffffffffffffffc0, %rcx
vmovaps %ymm5, (%rcx)
nop
nop
nop
xor $35950, %r12
lea addresses_UC_ht+0x84ab, %rbx
nop
nop
nop
nop
sub $32053, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x69b8, %rbp
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
sub $23221, %r12
lea addresses_WT_ht+0x12ed7, %rsi
lea addresses_D_ht+0xd7ab, %rdi
dec %r12
mov $66, %rcx
rep movsq
nop
and %rdx, %rdx
lea addresses_UC_ht+0x682b, %rdi
and %rbp, %rbp
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
nop
add $31700, %rdi
lea addresses_A_ht+0x1ef2b, %rbx
nop
nop
nop
add $1509, %rdi
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x60eb, %r14
nop
inc %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_D+0xc22b, %r15
nop
nop
nop
xor $51644, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r15)
nop
lfence

// Store
lea addresses_RW+0x94ab, %r15
nop
nop
cmp $58278, %rcx
movb $0x51, (%r15)
nop
dec %rdx

// Store
lea addresses_US+0x12cab, %rcx
sub %rsi, %rsi
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
cmp $43717, %rsi

// Store
lea addresses_WC+0x664b, %rdx
clflush (%rdx)
nop
nop
nop
inc %rcx
movw $0x5152, (%rdx)
nop
and %rdx, %rdx

// Faulty Load
mov $0x2c91bf00000004ab, %rcx
xor $21399, %rbp
movb (%rcx), %r14b
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'51': 56, '00': 23}
51 51 51 51 51 00 00 00 51 00 51 51 00 51 51 51 00 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 00 51 00 51 51 00 51 51 00 00 51 51 00 51 51 00 00 51 00 51 51 51 51 00 00 00 51 51 51 51 00 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51
*/
