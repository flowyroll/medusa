.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1828d, %rsi
lea addresses_normal_ht+0x743f, %rdi
clflush (%rdi)
nop
nop
and $46273, %r10
mov $32, %rcx
rep movsw
xor $55155, %rbp
lea addresses_D_ht+0x1cae9, %rcx
nop
nop
nop
nop
nop
sub $7912, %r14
mov (%rcx), %r10d
nop
nop
xor $29590, %rdi
lea addresses_normal_ht+0x13371, %r14
add $45928, %r11
mov $0x6162636465666768, %r10
movq %r10, (%r14)
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x4189, %r11
nop
nop
add $49898, %rcx
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm3
vpextrq $1, %xmm3, %rbp
xor %rcx, %rcx
lea addresses_normal_ht+0x17a89, %rcx
clflush (%rcx)
cmp $31214, %rbp
movb (%rcx), %r14b
nop
nop
dec %rcx
lea addresses_normal_ht+0x673b, %r11
nop
nop
nop
nop
nop
inc %r14
movw $0x6162, (%r11)
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x3089, %rbp
nop
nop
nop
nop
xor %rdi, %rdi
vmovups (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0x789, %rcx
nop
nop
nop
add %rbp, %rbp
mov (%rcx), %r10d
nop
nop
nop
nop
and $917, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x1af62, %r13
nop
nop
cmp $39854, %rdx
movb $0x51, (%r13)
nop
and $41301, %r13

// Store
lea addresses_normal+0xf721, %rax
nop
lfence
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
nop
nop
nop
cmp $42681, %rbx

// REPMOV
lea addresses_D+0x2c09, %rsi
lea addresses_PSE+0x1bc09, %rdi
cmp %r13, %r13
mov $3, %rcx
rep movsb
nop
nop
cmp %r8, %r8

// Store
lea addresses_normal+0x5121, %rdx
nop
nop
nop
xor $18778, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rdx)
nop
nop
dec %r15

// Store
lea addresses_PSE+0xeb09, %r8
clflush (%r8)
nop
nop
nop
sub $34413, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
nop
sub %rsi, %rsi

// Load
mov $0x194abd00000004c9, %r15
nop
nop
nop
dec %rcx
mov (%r15), %edx
xor %rbx, %rbx

// Load
lea addresses_D+0x3e9, %rdi
clflush (%rdi)
nop
nop
nop
cmp $48921, %r13
mov (%rdi), %r15
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_WT+0x19e3f, %r8
clflush (%r8)
nop
nop
add $3823, %rdi
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
xor %r8, %r8

// Faulty Load
lea addresses_PSE+0x1bc09, %rcx
nop
nop
cmp %r8, %r8
mov (%rcx), %r15w
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'36': 84}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
