.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x7f77, %rbp
nop
nop
nop
nop
xor $37922, %rcx
movb $0x61, (%rbp)
nop
nop
xor $49542, %r10
lea addresses_WT_ht+0x14f57, %rsi
lea addresses_A_ht+0x6477, %rdi
nop
nop
nop
nop
nop
xor $30030, %rbx
mov $50, %rcx
rep movsl
nop
cmp $61990, %rdi
lea addresses_WT_ht+0x18777, %rcx
nop
nop
nop
cmp %r13, %r13
movb (%rcx), %r10b
nop
nop
nop
nop
add $14673, %rcx
lea addresses_WC_ht+0xc577, %r13
dec %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x15977, %r10
clflush (%r10)
sub %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
and $0xffffffffffffffc0, %r10
movaps %xmm7, (%r10)
nop
nop
sub $42676, %rdi
lea addresses_A_ht+0x14401, %rsi
lea addresses_WC_ht+0x84a7, %rdi
nop
nop
nop
nop
add $58288, %r10
mov $102, %rcx
rep movsb
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0xbfaf, %rbp
nop
dec %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
cmp $23956, %rbp
lea addresses_WC_ht+0x5b77, %r13
nop
nop
dec %rdi
movups (%r13), %xmm6
vpextrq $1, %xmm6, %r10
nop
and $30188, %rbx
lea addresses_WC_ht+0xbe77, %r10
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
add $25337, %rbx
lea addresses_D_ht+0x18d09, %rsi
lea addresses_WT_ht+0x1d93f, %rdi
clflush (%rsi)
nop
cmp $17206, %r10
mov $78, %rcx
rep movsl
nop
nop
nop
nop
add $36465, %r10
lea addresses_WT_ht+0x16dd7, %rdi
nop
nop
lfence
mov (%rdi), %ebx
nop
nop
cmp $50490, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WC+0x91d7, %rcx
nop
xor %r15, %r15
movb $0x51, (%rcx)
nop
nop
nop
sub $43222, %rcx

// Store
lea addresses_normal+0xade0, %rsi
xor %r9, %r9
mov $0x5152535455565758, %r14
movq %r14, (%rsi)
nop
nop
nop
and %r9, %r9

// Store
lea addresses_US+0x11655, %r15
nop
nop
nop
nop
dec %rsi
movb $0x51, (%r15)
nop
nop
nop
nop
nop
cmp $21976, %r14

// Load
mov $0x6504610000000e34, %r9
clflush (%r9)
nop
nop
and %rcx, %rcx
movb (%r9), %r15b
nop
nop
nop
sub $35063, %rsi

// Faulty Load
lea addresses_WC+0x577, %r9
nop
xor %rsi, %rsi
movups (%r9), %xmm4
vpextrq $1, %xmm4, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 16}}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'18': 4, '46': 20926, '00': 225, '20': 7, '48': 440, '45': 225, '3b': 1, '36': 1}
46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 48 46 46 45 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 46
*/
