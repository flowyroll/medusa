.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x2cc8, %rbx
dec %rcx
movb $0x61, (%rbx)
nop
add $22005, %r9
lea addresses_WT_ht+0x4318, %rsi
lea addresses_WT_ht+0x7e48, %rdi
nop
nop
and $61400, %r11
mov $90, %rcx
rep movsl
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x3e48, %r15
clflush (%r15)
nop
nop
nop
nop
sub $38155, %rcx
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
add $58392, %rcx
lea addresses_WC_ht+0x1580, %rbx
nop
nop
nop
lfence
vmovups (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x8568, %r11
nop
nop
xor $1589, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm6
and $0xffffffffffffffc0, %r11
movaps %xmm6, (%r11)
nop
add %r15, %r15
lea addresses_D_ht+0x1a1f0, %r11
and %rbx, %rbx
movl $0x61626364, (%r11)
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x11f8, %r11
xor $26461, %rsi
mov (%r11), %r9w
nop
nop
nop
xor $11848, %r11
lea addresses_normal_ht+0x14b58, %rsi
lea addresses_UC_ht+0x2b18, %rdi
nop
xor %r13, %r13
mov $80, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x1a398, %rsi
lea addresses_WT_ht+0x16688, %rdi
nop
nop
nop
nop
cmp $16799, %r15
mov $24, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x18f94, %rbx
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rbx)
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0xfb88, %r15
nop
nop
nop
add $36463, %r13
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x54c8, %rsi
lea addresses_A_ht+0x1870, %rdi
nop
and $39489, %r15
mov $73, %rcx
rep movsw
nop
nop
nop
nop
add $28187, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rax
push %rbx

// Load
lea addresses_PSE+0x103a8, %r8
nop
nop
nop
cmp %r11, %r11
mov (%r8), %r10
nop
nop
nop
nop
xor $48417, %rax

// Store
lea addresses_RW+0x1e448, %r10
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
and $62120, %r11

// Store
lea addresses_UC+0x6648, %r10
clflush (%r10)
cmp $61345, %r13
movw $0x5152, (%r10)
nop
xor $23296, %r13

// Store
lea addresses_RW+0x4e48, %r10
nop
nop
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, (%r10)
nop
nop
nop
nop
nop
add %r13, %r13

// Store
lea addresses_WC+0x190c8, %r15
dec %rax
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_WC+0x1d972, %r10
inc %r13
movl $0x51525354, (%r10)
nop
xor %r11, %r11

// Store
lea addresses_A+0x10548, %r8
clflush (%r8)
nop
nop
nop
nop
add $13316, %rbx
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
nop
nop
nop
nop
sub $27834, %r13

// Faulty Load
lea addresses_UC+0x6648, %r8
nop
nop
and $1672, %r10
movups (%r8), %xmm6
vpextrq $1, %xmm6, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}}
{'44': 13, '49': 1, '00': 2}
44 44 44 00 44 44 44 44 44 49 44 44 44 44 44 00
*/
