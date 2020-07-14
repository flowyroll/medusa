.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5723, %r8
nop
nop
nop
nop
nop
add $58859, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm4
and $0xffffffffffffffc0, %r8
vmovaps %ymm4, (%r8)
nop
and $34095, %r9
lea addresses_UC_ht+0x164fb, %rsi
lea addresses_normal_ht+0xa623, %rdi
nop
and $58993, %rax
mov $81, %rcx
rep movsl
sub $20239, %rax
lea addresses_UC_ht+0x1bab3, %rsi
lea addresses_normal_ht+0x4823, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $48, %rcx
rep movsl
dec %r14
lea addresses_WT_ht+0xb297, %r15
nop
nop
xor $4951, %r14
movb (%r15), %al
nop
nop
nop
cmp $27757, %r9
lea addresses_A_ht+0x4b23, %rsi
lea addresses_A_ht+0x19b25, %rdi
nop
nop
nop
and %rax, %rax
mov $96, %rcx
rep movsw
and %rdi, %rdi
lea addresses_normal_ht+0x10a8b, %r9
nop
nop
nop
xor $3619, %r15
mov (%r9), %r14w
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0xc30c, %rsi
lea addresses_normal_ht+0xf623, %rdi
nop
nop
nop
add $38095, %r15
mov $40, %rcx
rep movsb
nop
nop
nop
nop
nop
and $35614, %r9
lea addresses_UC_ht+0x11c23, %rsi
lea addresses_normal_ht+0x6e23, %rdi
nop
nop
and %r15, %r15
mov $108, %rcx
rep movsb
nop
nop
nop
cmp $17405, %rcx
lea addresses_normal_ht+0x13013, %rcx
nop
and %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
and $37843, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Load
lea addresses_A+0x16c23, %rdi
nop
nop
dec %r12
movaps (%rdi), %xmm3
vpextrq $0, %xmm3, %r8
nop
nop
nop
nop
sub $39637, %r15

// Store
lea addresses_PSE+0x16d23, %rsi
clflush (%rsi)
nop
nop
nop
add %r15, %r15
movb $0x51, (%rsi)
add %r15, %r15

// Load
lea addresses_RW+0x17423, %r12
nop
nop
nop
nop
dec %r15
movb (%r12), %cl
nop
nop
inc %r12

// Store
lea addresses_normal+0xd3a3, %r15
nop
nop
nop
sub $61059, %rcx
movl $0x51525354, (%r15)
nop
nop
xor %r12, %r12

// Store
lea addresses_WC+0x28cb, %rsi
clflush (%rsi)
add %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_normal+0x18823, %rsi
clflush (%rsi)
nop
nop
xor $21320, %r9
mov (%rsi), %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_A', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'34': 30}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
