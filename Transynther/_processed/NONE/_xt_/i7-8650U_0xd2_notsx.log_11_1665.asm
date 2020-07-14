.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1727c, %rbp
nop
nop
nop
nop
nop
and %r11, %r11
mov (%rbp), %bx
nop
nop
nop
nop
nop
inc %r15
lea addresses_D_ht+0xeff0, %rdi
nop
nop
nop
nop
and $29944, %r11
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r12
nop
nop
nop
nop
nop
and $4123, %r15
lea addresses_WT_ht+0xce54, %rdi
nop
cmp $12302, %rax
mov (%rdi), %r15w
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0xbd0c, %rsi
lea addresses_WC_ht+0x1197c, %rdi
nop
nop
and %r12, %r12
mov $31, %rcx
rep movsb
nop
and $40763, %rbp
lea addresses_A_ht+0x1517c, %rsi
lea addresses_UC_ht+0x11d7c, %rdi
nop
nop
nop
inc %r11
mov $21, %rcx
rep movsb
nop
nop
nop
xor %r15, %r15
lea addresses_WC_ht+0x1697c, %r12
xor %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r12)
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x1c77c, %r11
nop
cmp %rbp, %rbp
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
and $51364, %r12
lea addresses_WT_ht+0x1477, %rsi
nop
nop
dec %r11
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0xe57c, %r11
nop
nop
nop
add %rcx, %rcx
mov (%r11), %si
dec %rcx
lea addresses_A_ht+0x68fc, %rsi
lea addresses_WT_ht+0x1eafc, %rdi
nop
nop
nop
nop
dec %r12
mov $16, %rcx
rep movsl
and $43006, %rdi
lea addresses_WT_ht+0x12d8c, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
dec %r15
movb $0x61, (%rbp)
add %rdi, %rdi
lea addresses_normal_ht+0x1b924, %rdi
add $8104, %r11
mov (%rdi), %rbx
sub $51037, %r11
lea addresses_normal_ht+0x1b18c, %rsi
lea addresses_WT_ht+0x1bbec, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %rax, %rax
mov $73, %rcx
rep movsw
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1e234, %rsi
lea addresses_normal_ht+0x537c, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $59, %rcx
rep movsw
nop
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0xdb48, %r11
nop
cmp %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x15f3a, %rdi
nop
nop
dec %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
nop
and %r13, %r13

// REPMOV
lea addresses_PSE+0x11034, %rsi
lea addresses_D+0x134fc, %rdi
nop
nop
nop
nop
nop
xor $31881, %r13
mov $121, %rcx
rep movsl
add $46310, %rsi

// Store
mov $0xb0, %rdi
nop
nop
nop
nop
dec %rax
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
nop
inc %rax

// Store
lea addresses_US+0x192bd, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
cmp $15170, %rbx

// Store
lea addresses_D+0x4ffc, %rsi
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
nop
xor $33336, %rdi

// Store
lea addresses_A+0x52cc, %rsi
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
and $15797, %rax

// Load
mov $0xb7c, %rax
nop
nop
add $5570, %rsi
movups (%rax), %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
nop
and %rsi, %rsi

// Store
mov $0x6244e00000006bc, %rcx
sub %rsi, %rsi
movw $0x5152, (%rcx)
nop
nop
nop
nop
cmp %rbx, %rbx

// Faulty Load
lea addresses_D+0x1e97c, %rcx
nop
nop
nop
nop
add $13679, %rdx
mov (%rcx), %ebx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'36': 11}
36 36 36 36 36 36 36 36 36 36 36
*/
