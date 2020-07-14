.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xc99e, %r15
dec %r13
movb $0x61, (%r15)
nop
cmp %r15, %r15
lea addresses_D_ht+0x67a, %rsi
lea addresses_UC_ht+0x1979e, %rdi
nop
nop
dec %r15
mov $89, %rcx
rep movsl
nop
nop
dec %r13
lea addresses_A_ht+0x1019e, %rsi
lea addresses_D_ht+0xe1e, %rdi
nop
nop
dec %r15
mov $122, %rcx
rep movsb
nop
nop
and $46749, %r15
lea addresses_normal_ht+0xd1be, %rsi
lea addresses_WT_ht+0x1a39e, %rdi
sub $30546, %r11
mov $27, %rcx
rep movsl
nop
cmp $48065, %r13
lea addresses_UC_ht+0x526e, %r14
nop
nop
nop
add $53035, %r15
movl $0x61626364, (%r14)
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x5206, %r15
nop
nop
nop
nop
nop
and $13078, %rdx
movb $0x51, (%r15)
nop
nop
nop
nop
and $63314, %r14

// REPMOV
lea addresses_normal+0x1e99e, %rsi
lea addresses_WC+0x192e6, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $23, %rcx
rep movsb
nop
nop
nop
xor $4349, %rdx

// Load
lea addresses_WT+0x841e, %rdx
nop
add $56128, %rsi
mov (%rdx), %r11d
nop
xor %rdi, %rdi

// Store
lea addresses_WT+0x193be, %rcx
inc %r15
movw $0x5152, (%rcx)
nop
nop
cmp %r13, %r13

// Store
lea addresses_normal+0xdd6e, %rdx
clflush (%rdx)
nop
nop
nop
inc %r11
movw $0x5152, (%rdx)
nop
nop
inc %rsi

// Store
mov $0x74d9a8000000044e, %r14
nop
nop
nop
nop
nop
xor %rdx, %rdx
movw $0x5152, (%r14)
and $31790, %rsi

// Store
lea addresses_UC+0x1738e, %r13
cmp $32344, %rdx
movl $0x51525354, (%r13)
and $61425, %r11

// Load
lea addresses_WT+0x1199e, %r13
nop
xor $12704, %rdx
mov (%r13), %r14
nop
nop
nop
nop
nop
cmp $28082, %r11

// Store
lea addresses_WC+0xca0e, %r11
clflush (%r11)
nop
nop
sub $63667, %rdi
movl $0x51525354, (%r11)
nop
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_normal+0x1e99e, %rsi
nop
add $27645, %rdi
mov (%rsi), %r15d
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'34': 180}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
