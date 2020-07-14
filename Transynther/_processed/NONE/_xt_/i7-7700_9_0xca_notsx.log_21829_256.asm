.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x31f8, %r15
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r10
movq %r10, (%r15)
nop
nop
nop
nop
nop
cmp $20248, %rax
lea addresses_A_ht+0xabb8, %r11
nop
nop
nop
nop
nop
cmp %r9, %r9
movb $0x61, (%r11)
nop
nop
nop
sub $40194, %r9
lea addresses_WC_ht+0x3ee8, %rsi
lea addresses_normal_ht+0x110b8, %rdi
and %r9, %r9
mov $118, %rcx
rep movsq
nop
nop
nop
xor $43924, %r10
lea addresses_UC_ht+0x41b8, %rsi
lea addresses_normal_ht+0xf8a0, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %r11, %r11
mov $58, %rcx
rep movsb
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0xd1b8, %r9
nop
nop
nop
xor $7037, %r11
movups (%r9), %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
xor $27925, %rdi
lea addresses_normal_ht+0x149b8, %r15
clflush (%r15)
nop
nop
nop
sub %rdi, %rdi
mov (%r15), %r14w
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0x7a9f, %r11
nop
nop
nop
nop
xor $19050, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
nop
and $45289, %r9
lea addresses_UC_ht+0x1a518, %rsi
lea addresses_D_ht+0x13f97, %rdi
clflush (%rsi)
nop
and %r10, %r10
mov $16, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x197a8, %rsi
lea addresses_WT_ht+0x15838, %rdi
nop
nop
nop
xor $58644, %r9
mov $11, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_WT_ht+0x21b8, %rdi
nop
nop
nop
nop
nop
xor $1070, %rcx
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %r9
nop
sub $63774, %r10
lea addresses_UC_ht+0x1f0, %rsi
lea addresses_A_ht+0x73f8, %rdi
nop
nop
sub $58964, %r10
mov $32, %rcx
rep movsb
cmp %rax, %rax
lea addresses_WC_ht+0x10e40, %r9
nop
and %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r9)
nop
and $43677, %rsi
lea addresses_normal_ht+0xb2b8, %rcx
nop
nop
nop
and %r10, %r10
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
cmp $13948, %rax
lea addresses_WT_ht+0xd138, %r11
nop
nop
nop
nop
add %r14, %r14
mov (%r11), %r9
nop
nop
nop
nop
dec %r14
lea addresses_D_ht+0xe1b8, %rdi
clflush (%rdi)
nop
nop
dec %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rdi)
add $52987, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0xabb8, %r15
inc %r13
movups (%r15), %xmm0
vpextrq $0, %xmm0, %rdx
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_WC+0x1adb8, %rbx
nop
nop
nop
nop
mfence
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
nop
add %r15, %r15

// Load
lea addresses_normal+0x44d8, %rbx
nop
nop
nop
and %r8, %r8
movb (%rbx), %r13b
nop
and $6057, %rbx

// Load
lea addresses_UC+0x151b8, %r13
nop
nop
cmp $32498, %r8
mov (%r13), %di
nop
nop
nop
xor $31528, %r13

// REPMOV
lea addresses_WT+0x8398, %rsi
lea addresses_normal+0x39b8, %rdi
inc %r8
mov $14, %rcx
rep movsb
nop
nop
nop
nop
xor $25554, %r15

// Store
lea addresses_WC+0x1c9b8, %r15
nop
nop
and %rcx, %rcx
movw $0x5152, (%r15)
nop
and %rdi, %rdi

// Faulty Load
lea addresses_UC+0x151b8, %rbx
dec %r11
mov (%rbx), %edx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
