.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rdx
lea addresses_UC_ht+0x1c70a, %r14
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r14), %r10
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x15386, %r9
xor $26919, %rdx
movl $0x61626364, (%r9)
nop
nop
nop
nop
add $56165, %rbx
lea addresses_D_ht+0x14532, %r8
nop
nop
add $673, %rax
mov (%r8), %r14
nop
nop
xor $50078, %r8
lea addresses_normal_ht+0x5089, %r9
add %r10, %r10
mov (%r9), %r8w
nop
nop
nop
and %rbx, %rbx
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x12b2, %r8
nop
and %rbp, %rbp
movw $0x5152, (%r8)
nop
nop
nop
xor $38807, %r8

// Store
lea addresses_PSE+0x7474, %rbp
nop
nop
nop
nop
lfence
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
add $14223, %rax

// Load
lea addresses_normal+0xc0b2, %rdi
nop
nop
xor $37428, %r11
mov (%rdi), %r8w
nop
nop
and %r15, %r15

// REPMOV
lea addresses_D+0x1ef32, %rsi
lea addresses_PSE+0x18b26, %rdi
nop
nop
nop
xor $22200, %r8
mov $119, %rcx
rep movsw
nop
nop
nop
nop
and %rbp, %rbp

// Load
lea addresses_normal+0xc0b2, %r15
nop
nop
xor %r8, %r8
movups (%r15), %xmm6
vpextrq $0, %xmm6, %rdi
nop
xor %rax, %rax

// Store
lea addresses_RW+0x38b2, %rsi
xor %r11, %r11
movb $0x51, (%rsi)
nop
and $28847, %r11

// Store
lea addresses_WC+0x1e6b2, %r13
nop
nop
nop
nop
nop
and $3262, %rcx
mov $0x5152535455565758, %r8
movq %r8, (%r13)
nop
nop
add $13937, %r11

// Store
lea addresses_UC+0x98b2, %rbp
clflush (%rbp)
nop
nop
inc %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
nop
and $45661, %rcx

// Store
lea addresses_D+0xabf2, %r8
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
nop
sub $61701, %r13

// Store
lea addresses_WC+0xe5ca, %rcx
nop
add %rdi, %rdi
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Load
mov $0xcb9, %rdi
nop
nop
nop
dec %rax
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_WC+0xe792, %rax
nop
dec %rsi
movb $0x51, (%rax)
nop
cmp $2578, %rsi

// Faulty Load
lea addresses_normal+0xc0b2, %rax
nop
nop
nop
nop
sub $16472, %r15
mov (%rax), %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'34': 10}
34 34 34 34 34 34 34 34 34 34
*/
