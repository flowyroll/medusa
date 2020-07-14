.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1e183, %rsi
lea addresses_normal_ht+0x11307, %rdi
clflush (%rsi)
nop
xor $23664, %r10
mov $92, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $63154, %rdx
lea addresses_WC_ht+0x1b543, %r8
nop
nop
and %rbx, %rbx
mov (%r8), %edx
nop
nop
sub $4452, %rdi
lea addresses_normal_ht+0x1cec9, %rcx
nop
nop
nop
add $59453, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0x2e46, %rdi
nop
nop
dec %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rdi)
nop
and %rbx, %rbx
lea addresses_WC_ht+0x1b52b, %r10
nop
sub $1484, %rdx
mov (%r10), %rbx
nop
nop
nop
nop
inc %r8
lea addresses_WC_ht+0xcf02, %rdi
nop
nop
nop
nop
nop
xor $28969, %r10
movb (%rdi), %bl
add $16914, %r10
lea addresses_normal_ht+0x15483, %rbx
cmp $25637, %rcx
mov (%rbx), %r8w
nop
nop
nop
nop
xor $6578, %rbx
lea addresses_normal_ht+0x2d63, %rcx
nop
nop
add %rbx, %rbx
movl $0x61626364, (%rcx)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x677f, %rsi
lea addresses_WC_ht+0x10c83, %rdi
nop
nop
nop
xor $50969, %rax
mov $39, %rcx
rep movsb
and %rdx, %rdx
lea addresses_normal_ht+0xac83, %rsi
lea addresses_WT_ht+0x283, %rdi
clflush (%rdi)
nop
add $64341, %rax
mov $87, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x1dff5, %r8
nop
sub %rax, %rax
mov (%r8), %rsi
add %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Load
lea addresses_PSE+0xa00, %r12
nop
xor $4048, %rax
mov (%r12), %rdi
nop
nop
nop
nop
and $22049, %rax

// Store
lea addresses_A+0x17c83, %r14
nop
add $11672, %rsi
movl $0x51525354, (%r14)
nop
nop
nop
nop
cmp $59074, %r12

// Store
lea addresses_A+0x17c83, %rax
nop
nop
nop
nop
sub $34661, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_UC+0x10723, %rbx
nop
nop
nop
cmp $44832, %rbp
movl $0x51525354, (%rbx)
nop
nop
and %rbp, %rbp

// Store
lea addresses_D+0x1a030, %rbp
nop
nop
nop
nop
xor %rdi, %rdi
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_A+0x101d3, %r14
nop
cmp $33900, %rdi
movb $0x51, (%r14)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Load
lea addresses_D+0x2a1f, %rsi
nop
nop
nop
nop
nop
dec %rdi
movb (%rsi), %bl
cmp %r12, %r12

// Store
lea addresses_normal+0x12d5f, %r14
nop
cmp %rdi, %rdi
movw $0x5152, (%r14)
nop
nop
nop
sub %rax, %rax

// Store
mov $0x1e4a6f0000000483, %rbp
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
xor $61851, %rbp

// Store
lea addresses_A+0xb203, %r12
nop
nop
nop
nop
cmp %rbp, %rbp
movl $0x51525354, (%r12)
nop
nop
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_A+0x17c83, %rbx
nop
and $7943, %rdi
vmovaps (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A', 'AVXalign': True, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'58': 3}
58 58 58
*/
