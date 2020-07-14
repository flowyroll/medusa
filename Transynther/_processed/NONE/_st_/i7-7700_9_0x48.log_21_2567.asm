.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x11cf3, %rdx
nop
nop
nop
nop
and %r13, %r13
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x3f3, %rsi
lea addresses_D_ht+0x101f3, %rdi
nop
nop
sub %r11, %r11
mov $42, %rcx
rep movsw
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x180f3, %r9
nop
sub %r13, %r13
movups (%r9), %xmm5
vpextrq $0, %xmm5, %r11
and %rdi, %rdi
lea addresses_WC_ht+0x1e60f, %rsi
lea addresses_UC_ht+0x79f3, %rdi
add $15931, %r11
mov $36, %rcx
rep movsl
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x16bf, %r13
nop
nop
xor %rcx, %rcx
mov (%r13), %si
nop
nop
nop
nop
nop
xor $4652, %r9
lea addresses_UC_ht+0xabf3, %r11
xor $51375, %rdi
movb $0x61, (%r11)
nop
inc %rdi
lea addresses_WC_ht+0x1e93, %r13
nop
xor $42934, %rsi
mov (%r13), %r11d
xor %rcx, %rcx
lea addresses_normal_ht+0x17bf3, %r11
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
nop
inc %rbx
lea addresses_A_ht+0xbff3, %r13
nop
and %rdx, %rdx
mov (%r13), %esi
nop
nop
nop
dec %r11
lea addresses_WC_ht+0xe95b, %rsi
lea addresses_WC_ht+0x17ab3, %rdi
xor $14280, %rdx
mov $93, %rcx
rep movsb
nop
nop
and $45697, %r13
lea addresses_D_ht+0x14bf3, %rsi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
and $18800, %rdx
lea addresses_normal_ht+0x47f3, %rcx
nop
nop
nop
nop
nop
and $37120, %rdi
mov (%rcx), %dx
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x16bf3, %r13
cmp $47596, %r11
mov (%r13), %ecx
nop
nop
nop
nop
nop
xor $55748, %r13
lea addresses_normal_ht+0x1bcf3, %rsi
lea addresses_WT_ht+0x1be33, %rdi
add %rbx, %rbx
mov $33, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_A_ht+0x5bf3, %rdi
nop
nop
nop
cmp $14292, %r9
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
and %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Load
lea addresses_D+0x90c1, %r12
nop
nop
cmp %rsi, %rsi
movups (%r12), %xmm0
vpextrq $1, %xmm0, %r10
nop
nop
nop
nop
nop
and $34599, %rax

// REPMOV
lea addresses_A+0x1337b, %rsi
lea addresses_WC+0x5971, %rdi
nop
nop
and $63824, %r8
mov $34, %rcx
rep movsb
nop
nop
nop
add %r10, %r10

// Store
lea addresses_WC+0x134b, %rdi
clflush (%rdi)
nop
nop
nop
add %r8, %r8
movw $0x5152, (%rdi)
nop
nop
and %rdi, %rdi

// Store
lea addresses_WC+0x7d17, %r8
nop
cmp %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
and $0xffffffffffffffc0, %r8
movntdq %xmm4, (%r8)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_US+0x33f3, %rax
nop
nop
nop
nop
sub %rdi, %rdi
movl $0x51525354, (%rax)
nop
nop
nop
and %r8, %r8

// Store
mov $0xf3, %r8
and %rax, %rax
movl $0x51525354, (%r8)
nop
nop
nop
cmp $62041, %rsi

// Faulty Load
lea addresses_WC+0x163f3, %r10
nop
nop
nop
nop
nop
sub $27552, %r8
mov (%r10), %r12
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': True}}
{'54': 21}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
