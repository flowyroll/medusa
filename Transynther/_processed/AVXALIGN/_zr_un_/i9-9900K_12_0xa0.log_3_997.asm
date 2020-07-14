.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x12cbb, %r12
nop
cmp $23235, %r14
movw $0x6162, (%r12)
nop
nop
nop
nop
xor $30360, %r15
lea addresses_normal_ht+0x7e89, %rsi
lea addresses_A_ht+0x3989, %rdi
nop
nop
nop
nop
xor $38283, %rdx
mov $120, %rcx
rep movsw
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0xdf29, %r15
nop
nop
nop
xor $19047, %rsi
movb $0x61, (%r15)
nop
nop
nop
nop
and $17050, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0xb089, %rbx
xor $59650, %rdx
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
and $27653, %rsi

// REPMOV
lea addresses_normal+0x9552, %rsi
lea addresses_normal+0x1cc89, %rdi
nop
nop
nop
and $64388, %r14
mov $78, %rcx
rep movsb
nop
add $26634, %rdx

// Store
lea addresses_RW+0x14689, %rdx
xor %r10, %r10
movb $0x51, (%rdx)
nop
cmp %rcx, %rcx

// Store
mov $0x589, %r14
nop
nop
nop
nop
and $19547, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
nop
add %r14, %r14

// Load
lea addresses_A+0x4789, %rcx
clflush (%rcx)
sub %r14, %r14
movb (%rcx), %al
nop
nop
nop
xor $54464, %rax

// Load
lea addresses_RW+0xec9, %r14
nop
cmp %rdx, %rdx
movb (%r14), %r10b
nop
nop
and %rdx, %rdx

// Store
lea addresses_D+0x20e9, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor $58966, %r14
movl $0x51525354, (%rbx)
nop
nop
sub $16571, %rcx

// Faulty Load
lea addresses_RW+0x1ac89, %rsi
nop
sub $63866, %rdx
movaps (%rsi), %xmm7
vpextrq $0, %xmm7, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'50': 2, '00': 1}
00 50 50
*/
