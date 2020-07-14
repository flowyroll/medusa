.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1510b, %rsi
lea addresses_A_ht+0xd6af, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $84, %rcx
rep movsq
nop
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x28b, %r12
clflush (%r12)
add $38687, %rdx
movb (%r12), %bl
nop
nop
nop
nop
nop
sub $27388, %rdx
lea addresses_UC_ht+0x1850b, %r12
clflush (%r12)
nop
dec %r10
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
sub $54828, %r12
lea addresses_WC_ht+0x1170b, %rsi
lea addresses_WC_ht+0x1bf0b, %rdi
nop
nop
nop
nop
and $31214, %r12
mov $104, %rcx
rep movsq
cmp $43519, %r12
lea addresses_WT_ht+0x830b, %r12
nop
and $7968, %rbx
movb (%r12), %dl
nop
inc %r12
lea addresses_normal_ht+0x7b0b, %rbx
nop
nop
nop
inc %r12
mov $0x6162636465666768, %r10
movq %r10, (%rbx)
nop
nop
nop
xor $13910, %rcx
lea addresses_D_ht+0x1b0b, %rsi
lea addresses_A_ht+0x1550b, %rdi
nop
nop
nop
xor $44125, %r10
mov $37, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x13f0b, %rdx
nop
nop
nop
xor %r12, %r12
movl $0x61626364, (%rdx)
nop
nop
nop
nop
add $59465, %rsi
lea addresses_WT_ht+0x70b, %rcx
nop
nop
nop
nop
nop
add $35679, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x13e55, %rsi
lea addresses_UC_ht+0x228b, %rdi
nop
nop
nop
nop
inc %r13
mov $102, %rcx
rep movsw
nop
dec %rbx
lea addresses_D_ht+0x10173, %rdx
clflush (%rdx)
nop
nop
dec %r12
mov (%rdx), %si
nop
nop
nop
nop
xor $61964, %r10
lea addresses_D_ht+0x1ab0b, %rsi
lea addresses_WC_ht+0x272b, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $55, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $21897, %r12
lea addresses_UC_ht+0xfdcb, %rsi
lea addresses_WC_ht+0x19348, %rdi
nop
nop
nop
nop
nop
add $10810, %r13
mov $3, %rcx
rep movsb
nop
and %r13, %r13
lea addresses_UC_ht+0x390b, %rsi
lea addresses_normal_ht+0x1547d, %rdi
nop
nop
nop
nop
nop
xor $50449, %r12
mov $66, %rcx
rep movsb
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x10b0b, %rbx
nop
nop
nop
nop
nop
cmp %r12, %r12
movb $0x61, (%rbx)
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x1fa17, %rsi
lea addresses_RW+0x11b0b, %rdi
nop
nop
sub %rax, %rax
mov $76, %rcx
rep movsb
nop
nop
xor $58861, %rax

// Store
lea addresses_UC+0x1cb0b, %r11
nop
xor $3733, %rdi
movb $0x51, (%r11)

// Exception!!!
nop
nop
mov (0), %rdi
nop
and $18525, %rcx

// Store
lea addresses_UC+0xef0b, %r10
nop
nop
sub %r11, %r11
movw $0x5152, (%r10)
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_A+0x1f4a9, %rcx
xor %r9, %r9
movl $0x51525354, (%rcx)

// Exception!!!
nop
nop
nop
nop
mov (0), %r9
nop
nop
nop
nop
and $31465, %r9

// Store
lea addresses_normal+0x772b, %r10
nop
nop
nop
xor $61197, %rsi
movl $0x51525354, (%r10)

// Exception!!!
nop
nop
nop
nop
nop
xor %rax, %rax
div %rax
nop
nop
nop
add $1688, %rcx

// Store
lea addresses_A+0x6c0b, %rax
nop
and $31268, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_RW+0x3b0b, %r9
nop
nop
nop
nop
nop
sub $7802, %rdi
movl $0x51525354, (%r9)
nop
nop
nop
mfence

// Store
lea addresses_US+0x1630b, %rax
dec %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rax)

// Exception!!!
nop
xor %r10, %r10
div %r10
nop
nop
nop
nop
and $59336, %r10

// Store
lea addresses_A+0x1e40b, %rsi
nop
and %r10, %r10
movw $0x5152, (%rsi)
cmp $56301, %r10

// Store
lea addresses_RW+0x430b, %rsi
clflush (%rsi)
nop
sub $5646, %r11
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
xor $58425, %rsi

// Faulty Load
lea addresses_US+0x1b30b, %r10
nop
xor %rax, %rax
mov (%r10), %si
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 8}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'19': 1}
19
*/
