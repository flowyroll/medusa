.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1ca5f, %r13
nop
add $18279, %r14
movl $0x61626364, (%r13)
nop
nop
nop
nop
sub %rax, %rax
lea addresses_D_ht+0x2e5f, %rsi
lea addresses_D_ht+0x1093f, %rdi
nop
sub $49373, %r12
mov $21, %rcx
rep movsb
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x2ceb, %rbp
clflush (%rbp)
nop
nop
nop
inc %r12
mov (%rbp), %r13
nop
nop
add $19673, %rbp
lea addresses_UC_ht+0x13fb7, %r13
nop
nop
xor $40840, %r14
movb (%r13), %cl
and %r14, %r14
lea addresses_D_ht+0x1c07f, %rsi
nop
nop
nop
add %r14, %r14
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %rax
nop
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0xfe37, %rdi
nop
nop
nop
and %r12, %r12
mov (%rdi), %r14w
nop
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x1de5f, %r12
clflush (%r12)
nop
nop
nop
sub $10613, %r13
movups (%r12), %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x11a5f, %r14
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%r14)
cmp $56637, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rbp
push %rdx

// Store
lea addresses_D+0x17c19, %rbp
cmp %r8, %r8
movw $0x5152, (%rbp)
nop
nop
nop
and %rbp, %rbp

// Load
mov $0x4cc7a8000000065f, %rdx
nop
nop
nop
nop
nop
cmp $22115, %r10
vmovups (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
nop
nop
sub $35647, %r9

// Store
mov $0x45f, %r8
nop
nop
nop
and %r9, %r9
movb $0x51, (%r8)
add %r10, %r10

// Store
lea addresses_WT+0x5f5f, %r10
nop
nop
nop
nop
sub %r11, %r11
movl $0x51525354, (%r10)
nop
nop
sub %rbp, %rbp

// Store
lea addresses_D+0x9eff, %rbp
nop
nop
nop
nop
add $45261, %r11
movw $0x5152, (%rbp)
nop
dec %r10

// Load
mov $0x45f, %r9
nop
nop
nop
xor %rbp, %rbp
movaps (%r9), %xmm6
vpextrq $0, %xmm6, %r14
nop
sub $19887, %r8

// Faulty Load
lea addresses_PSE+0x825f, %r8
nop
xor $40593, %rdx
mov (%r8), %r10
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'33': 6}
33 33 33 33 33 33
*/
