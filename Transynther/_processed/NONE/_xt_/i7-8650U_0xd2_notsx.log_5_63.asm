.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x16ff8, %r13
nop
nop
nop
and $35012, %r10
mov (%r13), %ebp
inc %rdx
lea addresses_UC_ht+0x1edb8, %rsi
lea addresses_D_ht+0x18138, %rdi
clflush (%rsi)
xor %r15, %r15
mov $37, %rcx
rep movsw
nop
cmp $1849, %rdi
lea addresses_D_ht+0x19e00, %r10
cmp $13587, %rbp
movl $0x61626364, (%r10)
nop
inc %rdx
lea addresses_WC_ht+0x14f08, %rcx
nop
nop
nop
nop
sub %r13, %r13
mov (%rcx), %ebp
nop
and $53622, %r15
lea addresses_D_ht+0x1bff8, %rsi
nop
nop
nop
nop
cmp $16027, %r10
mov (%rsi), %r13
nop
nop
nop
and $25710, %rsi
lea addresses_normal_ht+0x4178, %r10
nop
nop
and %r13, %r13
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
xor $18227, %rcx
lea addresses_UC_ht+0x7f8, %r13
nop
nop
nop
nop
nop
sub $18510, %r10
movb $0x61, (%r13)
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_normal_ht+0x1ddf8, %rsi
lea addresses_A_ht+0x6bf8, %rdi
nop
dec %r13
mov $53, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x1a3f8, %r13
and %rdx, %rdx
mov (%r13), %esi
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_normal+0x2fe6, %r12
nop
nop
nop
sub %rcx, %rcx
movw $0x5152, (%r12)
inc %r12

// Load
lea addresses_UC+0x17ff8, %r10
nop
sub $49168, %r12
mov (%r10), %r9d
and $6803, %r10

// Store
lea addresses_RW+0x1a920, %r12
nop
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x51525354, (%r12)
nop
nop
nop
add $58406, %r10

// Store
lea addresses_UC+0xb188, %r9
clflush (%r9)
nop
nop
cmp $21173, %rsi
movw $0x5152, (%r9)
nop
inc %rcx

// Store
lea addresses_normal+0x11656, %r10
nop
nop
sub $37959, %r14
movb $0x51, (%r10)
nop
nop
nop
nop
nop
and %rax, %rax

// Load
lea addresses_A+0x46e8, %rcx
nop
nop
nop
and $56074, %r14
mov (%rcx), %r9
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_PSE+0x167f8, %r10
nop
add $15974, %r12
movups (%r10), %xmm2
vpextrq $0, %xmm2, %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'33': 5}
33 33 33 33 33
*/
