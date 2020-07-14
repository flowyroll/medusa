.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1d78e, %rsi
lea addresses_WC_ht+0xc0ee, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $4, %rcx
rep movsw
nop
dec %r15
lea addresses_UC_ht+0x3f12, %r8
nop
nop
nop
sub %rsi, %rsi
movups (%r8), %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
nop
nop
nop
add $36768, %rbx
lea addresses_WC_ht+0x6b12, %rsi
nop
nop
nop
inc %r13
mov (%rsi), %di
sub %r15, %r15
lea addresses_WT_ht+0x9c12, %rsi
lea addresses_D_ht+0x14732, %rdi
nop
nop
lfence
mov $10, %rcx
rep movsw
nop
cmp $27642, %r15
lea addresses_D_ht+0xbe34, %r13
nop
add %r15, %r15
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
add %r13, %r13
lea addresses_normal_ht+0x2f12, %rbx
nop
nop
nop
nop
nop
add %r15, %r15
mov (%rbx), %ecx
nop
nop
nop
sub $33872, %rcx
lea addresses_D_ht+0x164ea, %rsi
nop
nop
xor $35707, %r9
movl $0x61626364, (%rsi)
sub $15065, %rbx
lea addresses_D_ht+0x193b2, %rcx
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
and %r8, %r8
lea addresses_UC_ht+0x17b6, %rsi
lea addresses_normal_ht+0x6412, %rdi
nop
nop
nop
inc %rbx
mov $78, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $53250, %r13
lea addresses_D_ht+0x1b92e, %rsi
lea addresses_WT_ht+0x1eb92, %rdi
nop
nop
nop
dec %r13
mov $23, %rcx
rep movsq
nop
nop
nop
nop
sub $30212, %r8
lea addresses_D_ht+0x1dea, %rsi
sub %r13, %r13
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
and %r15, %r15
lea addresses_WT_ht+0xac87, %r13
clflush (%r13)
nop
nop
nop
nop
nop
add $57873, %r15
mov (%r13), %r8d
nop
nop
nop
nop
and $4287, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rbp
push %rdi
push %rdx

// Store
lea addresses_WC+0x3712, %rdx
nop
and $45922, %r12
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
inc %r8

// Load
lea addresses_A+0x16b12, %r10
cmp $9746, %rdi
movups (%r10), %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_WC+0x1daf2, %rdi
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
xor %r10, %r10

// Load
lea addresses_normal+0x11312, %rdi
nop
dec %rdx
mov (%rdi), %bp
nop
sub $7752, %r10

// Store
lea addresses_UC+0xa82, %rdx
nop
sub %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rdx)
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_WC+0x25ba, %r12
nop
nop
nop
and $7616, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movntdq %xmm6, (%r12)
sub $34581, %rbp

// Faulty Load
lea addresses_normal+0x11312, %rbp
nop
nop
cmp $20152, %rdx
mov (%rbp), %r10d
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
