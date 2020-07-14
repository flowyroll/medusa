.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1871f, %rsi
lea addresses_WC_ht+0x153e5, %rdi
nop
cmp $31917, %r12
mov $19, %rcx
rep movsq
nop
nop
lfence
lea addresses_normal_ht+0xba0b, %r9
nop
nop
nop
add $52107, %rax
mov (%r9), %ebp
sub %rsi, %rsi
lea addresses_A_ht+0xd949, %rax
cmp $1875, %r9
mov (%rax), %di
nop
nop
nop
sub $62347, %rbp
lea addresses_normal_ht+0x9885, %rsi
lea addresses_UC_ht+0x17045, %rdi
nop
nop
nop
xor %rax, %rax
mov $86, %rcx
rep movsb
xor $34523, %rcx
lea addresses_WT_ht+0xabd1, %rbp
clflush (%rbp)
nop
nop
nop
xor %r9, %r9
movl $0x61626364, (%rbp)
nop
nop
nop
cmp $36292, %r12
lea addresses_WT_ht+0x116c5, %rdi
nop
nop
nop
nop
xor $49622, %r9
movw $0x6162, (%rdi)
nop
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0x1ada5, %r12
clflush (%r12)
nop
nop
nop
nop
sub %rcx, %rcx
movb $0x61, (%r12)
nop
nop
nop
cmp $43903, %rax
lea addresses_D_ht+0xcc85, %rax
nop
xor $14915, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rax)
nop
nop
xor $2181, %r12
lea addresses_D_ht+0x160a5, %rsi
nop
and %r12, %r12
movb $0x61, (%rsi)
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x8685, %rcx
nop
nop
nop
nop
nop
inc %rax
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
sub %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Load
lea addresses_WT+0x1f965, %rax
nop
nop
and %r14, %r14
movb (%rax), %r13b
nop
add $40033, %rcx

// Store
lea addresses_WT+0x2e45, %rdx
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
inc %r13

// Load
lea addresses_UC+0x11845, %rcx
nop
nop
nop
nop
and %rbp, %rbp
mov (%rcx), %r14
nop
nop
and $58800, %r14

// Store
mov $0xd45, %r14
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
and $21339, %r13

// Load
lea addresses_A+0x19c31, %r13
sub %rdx, %rdx
movups (%r13), %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
sub %rdx, %rdx

// Load
lea addresses_D+0x9b45, %rsi
nop
nop
nop
nop
nop
add $35140, %r13
mov (%rsi), %ecx
nop
nop
sub $31040, %rcx

// Store
lea addresses_D+0x1b505, %rax
nop
nop
nop
nop
xor $12787, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovaps %ymm1, (%rax)
nop
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_WC+0x146fd, %rsi
nop
and %rcx, %rcx
movw $0x5152, (%rsi)
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_UC+0x15145, %rbp
nop
nop
cmp $9725, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovaps %ymm2, (%rbp)
nop
nop
nop
cmp $2472, %rdx

// Faulty Load
lea addresses_normal+0x8945, %rdx
nop
nop
nop
nop
nop
and %r13, %r13
mov (%rdx), %ax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 5}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
