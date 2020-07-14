.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1bce8, %rsi
lea addresses_normal_ht+0x17800, %rdi
cmp %r10, %r10
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x19718, %r13
nop
nop
nop
and %rsi, %rsi
movl $0x61626364, (%r13)
nop
nop
nop
cmp $41217, %r13
lea addresses_normal_ht+0x1ca00, %rcx
nop
nop
nop
nop
sub %r12, %r12
mov (%rcx), %r10d
xor $15019, %rdi
lea addresses_WC_ht+0xb700, %rcx
clflush (%rcx)
nop
nop
xor %rbx, %rbx
mov (%rcx), %edi
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0xb700, %r12
nop
add %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, (%r12)
cmp $10089, %rdi
lea addresses_normal_ht+0x20b0, %rsi
lea addresses_UC_ht+0xf450, %rdi
add %r13, %r13
mov $8, %rcx
rep movsw
nop
nop
xor $7340, %rbx
lea addresses_normal_ht+0x700, %r13
and %r10, %r10
mov (%r13), %rbx
nop
add %rbx, %rbx
lea addresses_normal_ht+0x10af0, %rsi
lea addresses_A_ht+0x6c92, %rdi
nop
cmp %r11, %r11
mov $5, %rcx
rep movsw
nop
and %r11, %r11
lea addresses_WT_ht+0x15646, %r13
sub %rsi, %rsi
movw $0x6162, (%r13)
nop
cmp $24563, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0x1eb00, %r15
nop
nop
nop
nop
nop
add %rbp, %rbp
movups (%r15), %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
mov $0x700, %rdi
xor %rbp, %rbp
movb $0x51, (%rdi)
and %rcx, %rcx

// Load
lea addresses_US+0x6f00, %rbp
nop
nop
nop
sub $64172, %rcx
vmovups (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
sub %rbp, %rbp

// Faulty Load
lea addresses_UC+0xd700, %rbp
nop
nop
nop
nop
xor $50457, %rdx
mov (%rbp), %edi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'51': 63}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
