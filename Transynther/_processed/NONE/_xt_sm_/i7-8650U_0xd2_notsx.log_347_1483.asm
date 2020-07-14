.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x9167, %rbp
sub $8147, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %rbp
movntdq %xmm3, (%rbp)
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x15827, %rsi
lea addresses_A_ht+0xd963, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $65, %rcx
rep movsl
nop
add %r10, %r10
lea addresses_normal_ht+0x138e7, %rsi
clflush (%rsi)
nop
nop
sub $63244, %r10
movb (%rsi), %al
nop
nop
nop
and $48105, %rbp
lea addresses_UC_ht+0x1e0d3, %rax
nop
nop
xor %rcx, %rcx
movb $0x61, (%rax)
nop
nop
and %rdx, %rdx
lea addresses_normal_ht+0x1033f, %rsi
lea addresses_A_ht+0x80b9, %rdi
dec %r13
mov $23, %rcx
rep movsw
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x106a5, %rsi
lea addresses_D_ht+0xe227, %rdi
clflush (%rsi)
add $28414, %r13
mov $29, %rcx
rep movsw
xor $37330, %rsi
lea addresses_UC_ht+0x7e66, %rsi
lea addresses_normal_ht+0x18027, %rdi
nop
xor %rbp, %rbp
mov $68, %rcx
rep movsq
nop
nop
nop
nop
add %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x3227, %rdx
nop
nop
and $28904, %rbx
movl $0x51525354, (%rdx)
nop
nop
nop
nop
dec %rbx

// REPMOV
lea addresses_A+0xd149, %rsi
lea addresses_A+0xba27, %rdi
nop
nop
dec %r8
mov $92, %rcx
rep movsw
nop
nop
and %rdx, %rdx

// Store
lea addresses_A+0x3587, %rcx
nop
nop
nop
nop
nop
cmp $49089, %rax
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_D+0x3227, %rax
nop
nop
nop
nop
and $54920, %rdx
mov (%rax), %ecx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'54': 347}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
