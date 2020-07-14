.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x16240, %r11
clflush (%r11)
nop
nop
inc %rdx
mov (%r11), %r12d
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1b7a6, %rbp
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm0
and $0xffffffffffffffc0, %rbp
vmovntdq %ymm0, (%rbp)
nop
nop
nop
nop
add $58243, %r12
lea addresses_normal_ht+0x4476, %rcx
and %r8, %r8
movb $0x61, (%rcx)
xor $58260, %rcx
lea addresses_A_ht+0xaaa6, %r11
xor $18111, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_UC_ht+0x6ea6, %rsi
lea addresses_WT_ht+0x1bf66, %rdi
nop
nop
nop
sub $41975, %rdx
mov $125, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_WC_ht+0xc5d6, %rdx
nop
nop
nop
nop
nop
add $14167, %r8
mov $0x6162636465666768, %rbp
movq %rbp, (%rdx)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x4356, %rbp
clflush (%rbp)
nop
nop
nop
nop
cmp $55120, %r11
mov (%rbp), %r8
nop
nop
nop
nop
nop
xor $29256, %rsi
lea addresses_D_ht+0xdbea, %rdx
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rdx)
nop
add %rdi, %rdi
lea addresses_D_ht+0x69a6, %rsi
lea addresses_A_ht+0x4aa6, %rdi
nop
nop
nop
xor $28619, %r12
mov $51, %rcx
rep movsw
nop
nop
inc %r8
lea addresses_A_ht+0x16a6, %r8
nop
nop
nop
nop
nop
add $17919, %r12
mov (%r8), %cx
add %r8, %r8
lea addresses_UC_ht+0x42d6, %rsi
lea addresses_UC_ht+0xd38e, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $55, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x81f8, %rsi
lea addresses_normal_ht+0x16a6, %rdi
nop
nop
nop
nop
nop
and $639, %r11
mov $115, %rcx
rep movsl
nop
nop
nop
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0x65a6, %rbx
nop
nop
nop
nop
cmp %r9, %r9
movw $0x5152, (%rbx)
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_WT+0x15cc6, %rsi
nop
nop
nop
xor $14656, %r15
movw $0x5152, (%rsi)
nop
nop
sub $17303, %rsi

// Store
lea addresses_WC+0x12826, %rdx
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovntdq %ymm0, (%rdx)
nop
nop
inc %r9

// Store
lea addresses_normal+0x12366, %rbx
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
xor $63410, %rdx

// Load
lea addresses_WC+0x91e6, %r9
nop
nop
nop
inc %rcx
mov (%r9), %esi
nop
nop
nop
nop
nop
cmp $33320, %rsi

// Store
mov $0x2a6, %rcx
nop
nop
nop
nop
xor $41872, %r15
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
inc %r15

// Faulty Load
lea addresses_RW+0x1aaa6, %r9
nop
nop
inc %r14
movb (%r9), %dl
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'32': 2595}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
