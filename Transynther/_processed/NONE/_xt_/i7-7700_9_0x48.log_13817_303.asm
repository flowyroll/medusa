.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1693, %rsi
nop
nop
nop
xor %r13, %r13
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
and $4074, %r10
lea addresses_A_ht+0x104d3, %r8
nop
nop
nop
sub %rbp, %rbp
mov (%r8), %si
add %r13, %r13
lea addresses_WC_ht+0x1a0c3, %rsi
lea addresses_UC_ht+0x12d3, %rdi
nop
nop
nop
nop
nop
and $63561, %r10
mov $94, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rbp
lea addresses_A_ht+0x150d3, %rcx
sub $46644, %r10
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
and $38810, %r13
lea addresses_UC_ht+0x1ded3, %rsi
lea addresses_WT_ht+0xad53, %rdi
clflush (%rdi)
nop
sub %r10, %r10
mov $42, %rcx
rep movsb
inc %rbx
lea addresses_WT_ht+0x1b4d3, %rsi
lea addresses_D_ht+0x427, %rdi
nop
nop
nop
cmp %r13, %r13
mov $85, %rcx
rep movsb
nop
and $11464, %r8
lea addresses_D_ht+0xcad3, %rsi
lea addresses_WC_ht+0x3293, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $53, %rcx
rep movsl
nop
dec %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0xfe93, %r14
nop
nop
nop
inc %r10
movw $0x5152, (%r14)
nop
and %rsi, %rsi

// Store
lea addresses_WC+0xa32b, %rdi
nop
nop
nop
add $25311, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
sub %rsi, %rsi

// Load
mov $0xd13, %r11
clflush (%r11)
nop
nop
nop
nop
add $39066, %r14
mov (%r11), %di
nop
nop
nop
nop
nop
inc %r10

// Store
lea addresses_WC+0x65d3, %r10
clflush (%r10)
nop
nop
nop
add $31357, %rdi
movl $0x51525354, (%r10)
nop
nop
nop
nop
cmp $58489, %r11

// Faulty Load
lea addresses_D+0x5ed3, %r14
nop
nop
nop
nop
and %rdx, %rdx
movb (%r14), %r11b
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'36': 13817}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
