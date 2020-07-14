.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xe3d5, %rbp
xor $4732, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_WT_ht+0xcf25, %r15
nop
nop
nop
and $3798, %rdi
mov (%r15), %r13w
xor $33821, %r13
lea addresses_WT_ht+0x1cf35, %rsi
lea addresses_D_ht+0xd735, %rdi
nop
nop
and %r13, %r13
mov $104, %rcx
rep movsq
nop
nop
nop
nop
sub %r15, %r15
lea addresses_D_ht+0x9d35, %rsi
lea addresses_UC_ht+0x6961, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $112, %rcx
rep movsl
add $58621, %r15
lea addresses_D_ht+0xd627, %rsi
clflush (%rsi)
nop
nop
nop
nop
and %rbp, %rbp
movl $0x61626364, (%rsi)
nop
nop
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x1d935, %rsi
lea addresses_D_ht+0x12851, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $47881, %rax
mov $114, %rcx
rep movsl
nop
cmp %r13, %r13
lea addresses_A_ht+0xc224, %rax
nop
add %r8, %r8
mov (%rax), %bp
add $58386, %r8
lea addresses_WT_ht+0x11f73, %rsi
xor %r8, %r8
mov (%rsi), %bp
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x1c6a7, %r15
nop
nop
nop
and $14072, %r13
mov (%r15), %eax
dec %rsi
lea addresses_WC_ht+0xfc45, %rsi
sub $17698, %rbp
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
cmp $55609, %rcx
lea addresses_WC_ht+0x1ada5, %rsi
lea addresses_D_ht+0xd041, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $53, %rcx
rep movsq
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdx

// Store
lea addresses_A+0x11d35, %rax
nop
nop
nop
nop
xor %r13, %r13
movl $0x51525354, (%rax)
nop
and $37041, %r15

// Store
lea addresses_WT+0x3535, %r15
nop
sub $51638, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
nop
cmp $64845, %rcx

// Load
lea addresses_WC+0x19c55, %r15
xor %r14, %r14
movntdqa (%r15), %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
dec %rax

// Store
lea addresses_WT+0x3535, %r11
nop
nop
add $42646, %r15
movl $0x51525354, (%r11)
inc %r13

// Store
lea addresses_WT+0xb9e5, %r14
nop
inc %r13
movw $0x5152, (%r14)
nop
dec %rax

// Store
lea addresses_PSE+0x14535, %r13
dec %r15
movw $0x5152, (%r13)
nop
nop
nop
add $27092, %rdx

// Store
lea addresses_WC+0xa135, %rcx
clflush (%rcx)
sub $37782, %r11
mov $0x5152535455565758, %r15
movq %r15, (%rcx)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Load
mov $0x65, %r15
nop
sub %r13, %r13
mov (%r15), %rcx
nop
sub %rcx, %rcx

// Load
mov $0x4ae2d7000000059f, %r11
nop
nop
nop
nop
nop
sub %r15, %r15
movb (%r11), %al
nop
nop
sub %r14, %r14

// Store
lea addresses_UC+0x11435, %r15
sub %rdx, %rdx
movl $0x51525354, (%r15)
nop
nop
and $8197, %rdx

// Store
lea addresses_A+0x6015, %rax
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovntdq %ymm6, (%rax)
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_WT+0x3535, %rcx
nop
nop
nop
add $40867, %r13
movb (%rcx), %r15b
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rdx
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 4, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'52': 25}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
