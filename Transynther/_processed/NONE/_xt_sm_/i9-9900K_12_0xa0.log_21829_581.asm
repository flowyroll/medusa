.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x2827, %rsi
lea addresses_UC_ht+0x1e42d, %rdi
nop
nop
nop
nop
nop
and $64397, %rbx
mov $9, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $37833, %r12
lea addresses_A_ht+0x122ef, %rsi
lea addresses_WT_ht+0x8eef, %rdi
nop
inc %rdx
mov $3, %rcx
rep movsq
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x125ef, %r12
and %r14, %r14
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
and %rdi, %rdi
lea addresses_D_ht+0xdcd1, %r12
cmp $39970, %rcx
movups (%r12), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
add $45100, %rcx
lea addresses_D_ht+0x13787, %rdx
nop
nop
nop
nop
nop
sub $32330, %r14
mov (%rdx), %si
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x3aef, %rcx
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, (%rcx)
nop
nop
nop
and $64826, %rbx
lea addresses_D_ht+0x13f37, %rsi
lea addresses_D_ht+0x1d4af, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $59, %rcx
rep movsl
nop
and $19785, %rdi
lea addresses_A_ht+0x129c8, %rsi
lea addresses_D_ht+0x10f0f, %rdi
clflush (%rdi)
nop
nop
nop
add %r12, %r12
mov $32, %rcx
rep movsw
nop
xor $37803, %rsi
lea addresses_WC_ht+0x12ef, %rdx
nop
nop
cmp $29443, %rsi
mov (%rdx), %ecx
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x10c6f, %rsi
lea addresses_D_ht+0xf56f, %rdi
nop
nop
xor $33422, %rbx
mov $100, %rcx
rep movsb
nop
nop
nop
sub $11210, %rbx
lea addresses_UC_ht+0xd2ef, %rsi
lea addresses_D_ht+0x14aef, %rdi
nop
xor %rbx, %rbx
mov $81, %rcx
rep movsw
nop
nop
nop
cmp $49277, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi

// Store
lea addresses_WC+0x107ad, %rbp
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%rbp)
sub $24312, %rcx

// Load
lea addresses_PSE+0x10bef, %rcx
xor $5414, %r10
mov (%rcx), %r15d
xor %r15, %r15

// Load
mov $0x3d45700000002ef, %rbp
clflush (%rbp)
nop
nop
xor $51190, %r14
mov (%rbp), %r10d
sub $45084, %rdi

// Store
lea addresses_D+0x126af, %rcx
nop
nop
nop
nop
nop
dec %rdi
movl $0x51525354, (%rcx)
nop
and %rcx, %rcx

// Store
lea addresses_UC+0x92ef, %r9
nop
nop
nop
nop
nop
add %rbp, %rbp
movw $0x5152, (%r9)
nop
nop
add %rdi, %rdi

// Load
lea addresses_D+0x192ef, %rcx
cmp $39856, %rbp
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
nop
nop
xor $42469, %rbp

// Store
lea addresses_WC+0x133df, %rdi
nop
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
nop
nop
add $19306, %rdi

// Faulty Load
lea addresses_UC+0x92ef, %rbp
sub $30350, %r15
movb (%rbp), %cl
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
