.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1010a, %rdi
nop
nop
add %r11, %r11
mov (%rdi), %r13d
nop
nop
nop
xor %r13, %r13
lea addresses_A_ht+0x1d32, %rsi
lea addresses_D_ht+0x1a90a, %rdi
clflush (%rsi)
add $49547, %r14
mov $18, %rcx
rep movsb
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xbdea, %r11
nop
add $64752, %rbx
mov (%r11), %edi
nop
nop
nop
nop
nop
cmp $30980, %rdi
lea addresses_normal_ht+0xb6ea, %r14
nop
dec %rdi
mov $0x6162636465666768, %r13
movq %r13, (%r14)
nop
nop
nop
nop
nop
add $59209, %rbx
lea addresses_WT_ht+0x1eaea, %rdi
dec %r11
movw $0x6162, (%rdi)
nop
dec %r11
lea addresses_WC_ht+0x12c6a, %rcx
nop
nop
nop
nop
nop
inc %r13
mov (%rcx), %bx
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_normal+0x1feea, %r15
xor %rbp, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovaps %ymm2, (%r15)
nop
nop
nop
add $15289, %rbp

// Load
mov $0xeea, %r10
nop
nop
nop
nop
xor %r9, %r9
mov (%r10), %r15
nop
nop
nop
cmp $49932, %r10

// Store
lea addresses_A+0x1112a, %r9
nop
cmp $47083, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r9)

// Exception!!!
nop
nop
nop
nop
mov (0), %r15
nop
nop
nop
add $9379, %r8

// Store
lea addresses_WT+0x1aeea, %rdx
nop
nop
nop
nop
nop
xor %r8, %r8
movw $0x5152, (%rdx)
nop
nop
and $26592, %rdx

// Store
mov $0x50a, %rbp
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, (%rbp)
nop
nop
nop
nop
nop
add %rdx, %rdx

// Load
mov $0xeea, %rbp
nop
nop
xor %r15, %r15
mov (%rbp), %r8d
nop
nop
xor $5574, %rbp

// Faulty Load
lea addresses_WT+0x1aeea, %r15
nop
nop
add %r10, %r10
mov (%r15), %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'52': 11}
52 52 52 52 52 52 52 52 52 52 52
*/
