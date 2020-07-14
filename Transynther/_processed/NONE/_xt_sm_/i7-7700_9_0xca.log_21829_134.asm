.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x35af, %r11
clflush (%r11)
nop
nop
xor $19343, %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0xfb2f, %r8
cmp $65338, %rdi
mov (%r8), %rbx
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x466f, %rsi
lea addresses_normal_ht+0x113af, %rdi
nop
nop
nop
and %rbx, %rbx
mov $57, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $55710, %r12
lea addresses_UC_ht+0x1eeef, %rsi
lea addresses_WC_ht+0x7eaf, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $88, %rcx
rep movsb
sub $58547, %r8
lea addresses_A_ht+0x2947, %r11
nop
sub $5665, %rsi
mov (%r11), %r14
nop
nop
inc %rdi
lea addresses_A_ht+0x1520f, %rsi
lea addresses_normal_ht+0xdc2f, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $46906, %r12
mov $120, %rcx
rep movsw
nop
nop
dec %r8
lea addresses_A_ht+0xee8f, %r14
nop
nop
nop
nop
nop
inc %r13
movw $0x6162, (%r14)
nop
nop
and $35520, %r12
lea addresses_normal_ht+0x1e9ef, %r11
xor %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
and %rcx, %rcx
lea addresses_normal_ht+0xbcee, %r11
nop
nop
nop
nop
add $55804, %rcx
movl $0x61626364, (%r11)
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x2d46, %r14
xor $4753, %r11
movups (%r14), %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
xor $10528, %r13
lea addresses_normal_ht+0x11f7, %r11
nop
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%r11)
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x12cff, %r12
nop
nop
nop
nop
nop
dec %r14
mov (%r12), %rdi
add $24884, %r13
lea addresses_D_ht+0xa62f, %rsi
lea addresses_normal_ht+0x11718, %rdi
nop
nop
nop
cmp $24873, %r12
mov $8, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x1e9b, %rsi
lea addresses_D_ht+0x1962f, %rdi
nop
nop
add %r13, %r13
mov $3, %rcx
rep movsl
nop
nop
inc %r13
lea addresses_A_ht+0x1522f, %r11
nop
nop
nop
nop
nop
cmp $22007, %r13
movups (%r11), %xmm1
vpextrq $0, %xmm1, %rbx
nop
nop
and %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0x17e2f, %r10
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%r10)
and %r9, %r9

// Store
lea addresses_WT+0x7cef, %r9
nop
nop
nop
nop
nop
and $34606, %r10
movl $0x51525354, (%r9)
nop
add %rbp, %rbp

// Store
lea addresses_normal+0x56f, %r13
nop
dec %rcx
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
and $12782, %r13

// Store
lea addresses_UC+0xf939, %rdx
nop
nop
nop
nop
cmp $34269, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%rdx)
nop
nop
xor $18446, %r13

// Store
lea addresses_normal+0x862f, %r9
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
nop
nop
xor $2472, %rcx

// Store
lea addresses_WT+0x1e251, %r10
nop
add %rsi, %rsi
movw $0x5152, (%r10)
nop
nop
cmp $19730, %r10

// Faulty Load
lea addresses_normal+0x17e2f, %rbp
nop
nop
nop
nop
add %rsi, %rsi
mov (%rbp), %cx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
