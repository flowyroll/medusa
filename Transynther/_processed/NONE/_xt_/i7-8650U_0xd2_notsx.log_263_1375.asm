.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x3822, %rsi
lea addresses_D_ht+0x1731a, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %r13
mov $68, %rcx
rep movsl
nop
nop
and %r13, %r13
lea addresses_UC_ht+0xa91a, %rsi
lea addresses_UC_ht+0x1c11a, %rdi
clflush (%rdi)
nop
nop
nop
cmp $18298, %r11
mov $11, %rcx
rep movsl
nop
nop
add $52128, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_WT+0x1211a, %rax
sub %r10, %r10
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
and %rax, %rax

// Load
lea addresses_A+0x2440, %r11
nop
nop
nop
nop
nop
xor $37514, %r8
movb (%r11), %r10b
nop
nop
add %r8, %r8

// Store
lea addresses_A+0x1e91a, %r10
nop
nop
nop
nop
nop
add %rbp, %rbp
movw $0x5152, (%r10)
nop
and $41759, %r10

// Load
mov $0x7c2, %rax
nop
nop
nop
nop
and %r8, %r8
mov (%rax), %di
nop
sub $59634, %rdx

// Load
lea addresses_WC+0x148d6, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov (%rdi), %eax
nop
nop
nop
nop
and $19987, %rdx

// Store
lea addresses_A+0x1d61a, %rdi
nop
sub %r8, %r8
movw $0x5152, (%rdi)
add $37163, %r10

// Store
lea addresses_A+0x11d1a, %rax
nop
nop
and %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%rax)
nop
nop
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_A+0x1e91a, %rdi
nop
nop
cmp $6797, %r8
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'35': 263}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
