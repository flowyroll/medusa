.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xa89a, %r12
nop
nop
inc %rbx
mov (%r12), %r8
nop
nop
and %r13, %r13
lea addresses_A_ht+0x14e1a, %rsi
lea addresses_A_ht+0x854a, %rdi
nop
nop
nop
nop
sub $13457, %r15
mov $52, %rcx
rep movsl
nop
nop
nop
add $23868, %r15
lea addresses_A_ht+0x6a1a, %rcx
nop
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0x6e1a, %rcx
nop
nop
nop
nop
inc %r8
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x261a, %r13
nop
nop
nop
nop
nop
cmp %r8, %r8
movb (%r13), %cl
nop
nop
nop
dec %rbx
lea addresses_normal_ht+0x14a9a, %rsi
lea addresses_normal_ht+0x261a, %rdi
and $18401, %r8
mov $89, %rcx
rep movsb
nop
add %r8, %r8
lea addresses_WT_ht+0xac1a, %r15
clflush (%r15)
nop
nop
nop
nop
nop
and $28989, %rcx
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0xf35a, %r12
sub %r8, %r8
mov (%r12), %rdi
nop
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0xc47a, %r12
nop
nop
nop
dec %rcx
movl $0x51525354, (%r12)
nop
nop
cmp $50683, %r13

// Store
lea addresses_A+0xc5ba, %r13
nop
nop
nop
xor $57597, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
nop
nop
xor $77, %r12

// Store
lea addresses_US+0x12ee6, %r15
nop
nop
inc %r10
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Load
lea addresses_normal+0x11c2a, %r13
dec %rdi
mov (%r13), %r10d
nop
nop
sub %r13, %r13

// Store
lea addresses_D+0x6d7a, %rcx
nop
add %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%rcx)
inc %rsi

// Store
lea addresses_WC+0x1439a, %rsi
nop
nop
nop
nop
cmp $52755, %rcx
movw $0x5152, (%rsi)
nop
nop
cmp $54180, %r10

// Store
lea addresses_normal+0x6f3a, %r13
nop
nop
nop
nop
nop
cmp $56249, %rdi
movw $0x5152, (%r13)
nop
nop
sub $6082, %rcx

// Faulty Load
mov $0x312531000000001a, %rdi
nop
nop
nop
nop
add %rsi, %rsi
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'44': 7453, '45': 9370, '49': 423, '00': 4583}
49 44 45 45 00 45 45 00 45 45 45 45 45 44 45 45 00 45 45 45 45 45 45 45 45 45 45 49 00 45 00 00 00 00 00 00 44 45 45 45 49 44 45 44 45 00 45 45 00 45 44 44 00 45 45 45 44 44 44 45 44 44 44 45 45 00 44 00 45 49 45 45 45 45 00 00 45 44 00 44 00 45 45 45 45 45 45 45 45 45 44 44 45 45 45 44 44 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 44 45 45 45 45 45 44 44 44 45 44 00 00 44 00 44 00 45 45 44 45 45 45 00 44 45 45 00 49 45 00 44 45 00 45 00 45 44 45 45 45 45 44 00 45 44 44 44 00 45 44 45 45 44 44 44 44 44 45 45 00 45 44 00 44 44 45 44 44 00 45 45 00 00 45 00 00 44 44 00 00 45 45 45 45 44 45 44 44 00 44 44 44 45 45 45 45 45 44 49 44 00 44 45 45 45 44 45 44 44 44 45 45 45 49 00 44 00 44 45 45 00 45 44 44 45 45 45 00 00 00 44 45 45 00 44 45 45 44 44 44 44 45 00 45 00 45 44 00 45 45 45 45 45 00 45 44 45 00 45 44 00 44 45 00 44 44 44 45 00 45 44 45 00 45 44 44 00 00 44 45 44 45 00 45 44 45 44 45 45 00 00 44 00 45 44 45 45 44 00 44 45 45 45 45 45 45 45 44 44 00 45 00 00 45 45 00 44 44 49 44 45 45 44 00 44 45 44 45 45 45 00 44 00 44 45 00 45 45 45 44 00 45 00 45 44 44 44 00 45 45 44 45 44 44 45 00 45 44 45 45 45 45 45 45 44 44 44 00 00 44 00 45 45 44 45 45 44 49 45 45 44 44 45 45 44 00 45 45 44 00 45 45 44 44 00 45 44 45 00 44 44 44 45 00 45 45 45 45 44 00 44 44 00 00 00 45 45 00 45 44 45 45 44 45 45 44 45 45 45 45 00 00 44 44 00 45 45 45 44 44 44 45 45 45 45 44 44 44 45 45 45 45 00 45 44 00 00 44 44 45 45 45 45 00 45 45 44 00 44 45 45 45 45 44 44 00 44 45 44 44 45 00 44 44 00 00 44 44 45 45 44 45 44 44 44 00 44 45 00 44 00 44 45 44 45 00 44 00 45 44 00 45 44 44 44 00 44 44 44 45 45 45 45 44 44 45 44 00 45 44 00 45 44 00 44 45 00 44 00 00 00 45 45 45 45 44 45 00 44 44 45 45 45 44 45 45 44 44 45 45 45 00 44 44 45 00 44 44 45 44 44 44 00 44 45 44 45 45 45 00 44 44 45 44 00 44 45 44 00 45 45 45 45 44 44 45 44 44 49 00 00 45 00 00 44 00 00 00 45 44 44 44 45 45 44 44 44 45 00 44 45 45 00 44 45 44 45 45 44 00 44 44 45 00 44 44 45 44 00 00 44 44 44 44 44 45 44 00 45 45 44 45 44 00 45 00 45 45 45 44 00 44 44 45 00 45 00 44 45 44 45 49 44 44 45 00 44 00 45 44 44 44 45 44 44 45 45 00 44 44 44 00 45 45 45 45 45 00 45 45 45 44 45 45 44 44 44 44 44 44 45 00 45 44 00 45 00 45 44 00 44 44 45 44 45 45 45 00 45 45 45 45 45 44 44 00 45 44 45 00 00 00 49 00 00 44 45 44 44 00 44 45 45 00 44 45 45 45 00 44 00 45 45 00 45 44 44 00 44 44 00 45 00 44 00 45 00 44 45 44 00 45 00 45 44 44 45 45 44 45 45 44 45 00 44 00 44 44 45 44 45 45 45 45 45 45 44 00 44 00 44 45 44 45 44 44 00 44 00 44 00 44 45 44 45 45 44 44 00 44 49 44 45 45 45 45 45 45 45 45 44 00 44 45 44 45 44 44 44 45 45 00 45 45 00 45 44 00 44 44 45 00 45 45 49 45 45 44 45 45 44 45 00 44 45 45 45 44 45 00 45 44 44 44 45 45 45 45 45 45 00 45 44 44 45 45 44 45 44 45 45 45 00 44 45 44 44 44 45 44 45 45 45 44 45 45 45 49 45 45 45 45 45 45 44 00 44 44 45 44 45 44 45 45 44 00 00 00 45 00 45 45 00 44 44 45 00 45 45 45 45 45 45 45 00 00 45 45 44 45 44 44 00 44 44 45 44 45 00 44 45 00 00 45 45 44 00 44 44 45 44 44 44 45
*/
