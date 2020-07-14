.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16fce, %r8
and %r11, %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x87ce, %rsi
lea addresses_WT_ht+0x187ce, %rdi
nop
nop
nop
cmp %rax, %rax
mov $87, %rcx
rep movsw
nop
nop
dec %rcx
lea addresses_A_ht+0x4bce, %r8
clflush (%r8)
inc %rax
movw $0x6162, (%r8)
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x33b6, %rsi
lea addresses_WT_ht+0x17bce, %rdi
nop
nop
and %r8, %r8
mov $51, %rcx
rep movsb
nop
dec %rdi
lea addresses_D_ht+0x1540, %rsi
lea addresses_D_ht+0x105b6, %rdi
nop
nop
sub %r10, %r10
mov $124, %rcx
rep movsl
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0xcece, %rax
nop
nop
add $33422, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm0
and $0xffffffffffffffc0, %rax
movaps %xmm0, (%rax)
nop
sub $29483, %r8
lea addresses_normal_ht+0xf0ce, %r11
nop
nop
nop
nop
inc %r14
mov (%r11), %r10d
nop
xor $56712, %rax
lea addresses_UC_ht+0x14202, %rdi
nop
nop
nop
and $42328, %r14
mov (%rdi), %r10
and %rax, %rax
lea addresses_UC_ht+0x135ce, %r10
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, (%r10)
nop
nop
nop
nop
add $22656, %rax
lea addresses_WT_ht+0x7dce, %rdi
nop
nop
nop
add %rax, %rax
mov (%rdi), %r8w
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x15b1e, %rsi
lea addresses_UC_ht+0x761e, %rdi
nop
add $16894, %r14
mov $3, %rcx
rep movsw
nop
nop
nop
add $8175, %r8
lea addresses_D_ht+0x1ebfa, %rdi
clflush (%rdi)
dec %rax
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %r11
nop
add $11000, %rsi
lea addresses_D_ht+0x1b26e, %rdi
cmp $15031, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm3
movups %xmm3, (%rdi)
nop
nop
xor $62185, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_normal+0x1c34e, %rbp
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
and $41444, %rdi

// Store
lea addresses_D+0x10f22, %r13
clflush (%r13)
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm6
and $0xffffffffffffffc0, %r13
vmovntdq %ymm6, (%r13)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rdi
xor %rcx, %rcx

// Store
lea addresses_A+0xfc78, %rdi
nop
nop
nop
nop
and $1429, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%rdi)
sub $45598, %rbx

// Store
mov $0xfce, %rbx
add $49787, %r12
movw $0x5152, (%rbx)
nop
nop
nop
and $58099, %rcx

// Store
mov $0x4e5, %rcx
nop
nop
nop
nop
xor $10035, %r8
movl $0x51525354, (%rcx)
nop
nop
nop
cmp %r12, %r12

// Faulty Load
lea addresses_PSE+0x1d7ce, %r13
nop
nop
nop
nop
nop
cmp $33171, %r8
movb (%r13), %cl
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'33': 13569}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
