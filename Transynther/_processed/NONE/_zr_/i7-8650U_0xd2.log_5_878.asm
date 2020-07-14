.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xf84c, %rsi
lea addresses_D_ht+0x14b11, %rdi
nop
add %r15, %r15
mov $91, %rcx
rep movsw
nop
nop
nop
and %r10, %r10
lea addresses_UC_ht+0xb636, %rsi
lea addresses_UC_ht+0x20cc, %rdi
clflush (%rdi)
sub %r12, %r12
mov $79, %rcx
rep movsw
nop
nop
dec %r15
lea addresses_WC_ht+0x8774, %rsi
nop
nop
and %rbx, %rbx
mov (%rsi), %r15w
nop
nop
sub %r15, %r15
lea addresses_D_ht+0x1e674, %rcx
nop
nop
nop
cmp %rsi, %rsi
mov (%rcx), %di
nop
nop
nop
xor $698, %r15
lea addresses_A_ht+0x7e74, %rbx
nop
nop
nop
nop
nop
cmp $27027, %rdi
mov (%rbx), %cx
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x1ea74, %rcx
nop
cmp $56153, %r15
movb $0x61, (%rcx)
cmp $64987, %rbx
lea addresses_UC_ht+0xaa74, %r15
nop
nop
add %r12, %r12
mov (%r15), %ecx
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x10cb4, %rsi
lea addresses_A_ht+0xdc84, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $40, %rcx
rep movsw
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x1dcb8, %rsi
lea addresses_D_ht+0xff94, %rdi
nop
nop
cmp %rdx, %rdx
mov $1, %rcx
rep movsb
cmp %rdx, %rdx
lea addresses_UC_ht+0x1c274, %rsi
lea addresses_A_ht+0x450a, %rdi
clflush (%rsi)
and $1839, %rdx
mov $67, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $1477, %rdx
lea addresses_D_ht+0x2bec, %rcx
xor %r15, %r15
movb $0x61, (%rcx)
add $7750, %rcx
lea addresses_UC_ht+0x179b2, %rdi
nop
nop
and %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
dec %r12
lea addresses_normal_ht+0x7364, %r10
clflush (%r10)
nop
cmp %r15, %r15
movups (%r10), %xmm7
vpextrq $0, %xmm7, %r12
add $56419, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x1c4dc, %rbx
nop
nop
nop
nop
xor %rdx, %rdx
movb (%rbx), %r13b
and %rbp, %rbp

// REPMOV
lea addresses_D+0x10074, %rsi
lea addresses_D+0x8cf4, %rdi
nop
sub $458, %r13
mov $18, %rcx
rep movsb
nop
nop
nop
nop
add $37987, %rbp

// Load
lea addresses_normal+0x145d, %rbx
nop
nop
nop
nop
nop
sub $17230, %r13
movaps (%rbx), %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_A+0x12e74, %rdx
clflush (%rdx)
nop
nop
nop
add %r13, %r13
mov (%rdx), %r11d
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 5}
00 00 00 00 00
*/
