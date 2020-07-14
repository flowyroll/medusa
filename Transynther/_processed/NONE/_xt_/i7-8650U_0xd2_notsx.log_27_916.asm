.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1694c, %rsi
lea addresses_WC_ht+0x11e7c, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r14, %r14
mov $123, %rcx
rep movsl
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x7450, %rsi
lea addresses_WT_ht+0x17288, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %rax, %rax
mov $96, %rcx
rep movsl
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xe448, %r10
sub $30153, %rsi
movw $0x6162, (%r10)
nop
sub %r10, %r10
lea addresses_D_ht+0x1de88, %rdi
clflush (%rdi)
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x2ed8, %rsi
lea addresses_normal_ht+0x17be6, %rdi
sub $44221, %r11
mov $30, %rcx
rep movsl
nop
dec %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Load
mov $0x6c8, %rbx
nop
nop
nop
nop
nop
cmp $61815, %rdi
mov (%rbx), %rsi
cmp %r11, %r11

// Load
lea addresses_A+0x1a158, %rbp
nop
nop
nop
nop
nop
add %r8, %r8
vmovaps (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
sub %r8, %r8

// Store
lea addresses_WC+0x94c8, %rbx
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovntdq %ymm7, (%rbx)
nop
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_WT+0x18ba8, %rsi
nop
nop
cmp %r8, %r8
movl $0x51525354, (%rsi)
xor %rsi, %rsi

// Faulty Load
lea addresses_D+0x16c8, %rbp
clflush (%rbp)
nop
inc %rdi
mov (%rbp), %ebx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'36': 27}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
