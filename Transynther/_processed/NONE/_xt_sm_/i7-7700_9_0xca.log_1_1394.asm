.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x14210, %r11
xor $57306, %r9
and $0xffffffffffffffc0, %r11
vmovaps (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
and $8783, %r15
lea addresses_D_ht+0x1e97c, %rsi
lea addresses_A_ht+0x18b7c, %rdi
nop
nop
nop
add $52099, %r14
mov $49, %rcx
rep movsw
nop
nop
xor $24315, %r15
lea addresses_WT_ht+0x105bc, %rsi
lea addresses_WT_ht+0x9b7c, %rdi
sub %r15, %r15
mov $7, %rcx
rep movsq
nop
nop
cmp $46652, %r9
lea addresses_UC_ht+0xef7c, %rsi
lea addresses_normal_ht+0x2f7c, %rdi
nop
cmp %rdx, %rdx
mov $93, %rcx
rep movsq
nop
nop
add $36884, %rdx
lea addresses_D_ht+0x757c, %rsi
lea addresses_D_ht+0x4b7c, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r9, %r9
mov $47, %rcx
rep movsb
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x4e7c, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r14
movb (%rsi), %r15b
nop
nop
nop
nop
cmp $12383, %rsi
lea addresses_A_ht+0x1577c, %rsi
lea addresses_UC_ht+0x96dc, %rdi
nop
nop
nop
nop
sub $419, %r14
mov $38, %rcx
rep movsw
nop
nop
inc %rdi
lea addresses_A_ht+0x54fc, %rdx
nop
xor $13639, %r14
movb (%rdx), %r9b
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x16ebc, %r14
nop
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%r14)
nop
add %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rcx
push %rdx
push %rsi

// Store
lea addresses_UC+0x417c, %rcx
clflush (%rcx)
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
add %rsi, %rsi

// Store
lea addresses_A+0x1337c, %rsi
nop
nop
nop
xor $40871, %r10
movl $0x51525354, (%rsi)
nop
nop
nop
sub $52737, %r12

// Load
lea addresses_RW+0xde7c, %rcx
nop
sub %r8, %r8
movb (%rcx), %r10b
nop
and %rcx, %rcx

// Store
lea addresses_US+0xbb7c, %rsi
nop
nop
nop
nop
dec %r10
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
nop
and $40469, %r8

// Store
lea addresses_A+0x1337c, %r10
add %rsi, %rsi
movw $0x5152, (%r10)
nop
nop
nop
nop
sub $32112, %rcx

// Store
lea addresses_A+0x1337c, %r10
nop
nop
nop
nop
nop
cmp $58906, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movaps %xmm7, (%r10)
nop
nop
sub $23419, %r12

// Faulty Load
lea addresses_A+0x1337c, %r10
clflush (%r10)
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%r10), %dl
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'58': 1}
58
*/
