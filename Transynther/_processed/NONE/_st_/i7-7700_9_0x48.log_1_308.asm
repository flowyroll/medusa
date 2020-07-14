.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1d475, %rsi
lea addresses_WT_ht+0x14f15, %rdi
cmp $64895, %rbp
mov $12, %rcx
rep movsb
nop
inc %r8
lea addresses_D_ht+0x1855, %rdi
nop
nop
nop
dec %r15
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xa2d5, %r15
clflush (%r15)
nop
nop
nop
nop
nop
add %r11, %r11
movups (%r15), %xmm5
vpextrq $1, %xmm5, %rcx
nop
inc %r11
lea addresses_UC_ht+0x3155, %r8
nop
nop
nop
nop
dec %rsi
movb (%r8), %r11b
nop
nop
sub $45477, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rbx

// Store
lea addresses_WC+0xd3f7, %rbp
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movw $0x5152, (%rbp)
nop
nop
nop
nop
add $51499, %rbx

// Load
lea addresses_WT+0x1e862, %rax
nop
nop
nop
nop
nop
xor %r11, %r11
movups (%rax), %xmm2
vpextrq $1, %xmm2, %rbp
nop
add $48886, %rax

// Load
lea addresses_WT+0x955, %rax
nop
nop
nop
nop
nop
xor %r13, %r13
mov (%rax), %bp
cmp %r13, %r13

// Load
mov $0xc55, %r13
clflush (%r13)
nop
nop
add $10860, %rbx
mov (%r13), %r9w
nop
nop
inc %r8

// Store
lea addresses_normal+0x19955, %rax
nop
nop
nop
xor $38255, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rax)
nop
nop
nop
nop
add %rbp, %rbp

// Store
mov $0x8b5, %r13
and %r11, %r11
movw $0x5152, (%r13)
cmp %r8, %r8

// Load
mov $0x535, %rbx
xor %rax, %rax
mov (%rbx), %r11w
nop
nop
nop
nop
and $55742, %rax

// Store
lea addresses_PSE+0xce35, %r9
sub $44113, %rax
movb $0x51, (%r9)
nop
nop
nop
add %r11, %r11

// Faulty Load
lea addresses_WT+0x955, %r13
nop
nop
sub %rbx, %rbx
mov (%r13), %ax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'58': 1}
58
*/
