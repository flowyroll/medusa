.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x15a6b, %rsi
lea addresses_WC_ht+0x2bf3, %rdi
and %r13, %r13
mov $50, %rcx
rep movsq
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1b6ef, %r10
xor %rdx, %rdx
movl $0x61626364, (%r10)
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0xa393, %rsi
lea addresses_UC_ht+0x11773, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $127, %rcx
rep movsw
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x10804, %rbx
nop
xor %r13, %r13
movups (%rbx), %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x15af3, %rbx
cmp $64946, %rsi
mov (%rbx), %r10
nop
nop
nop
add %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_PSE+0xd1f3, %r15
nop
nop
nop
nop
cmp $27789, %rcx
movb $0x51, (%r15)
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_normal+0x129f3, %rbp
nop
add %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rbp)
add %rdx, %rdx

// Load
lea addresses_WC+0x11f03, %rdx
clflush (%rdx)
nop
nop
nop
nop
xor %r10, %r10
mov (%rdx), %r15w
cmp %rbp, %rbp

// Store
mov $0x7fa24100000002d3, %rdx
nop
nop
nop
nop
cmp $13927, %r15
movb $0x51, (%rdx)
nop
nop
nop
nop
xor $49606, %rdi

// Store
lea addresses_RW+0x1e233, %r10
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_D+0x1ec73, %r10
nop
nop
nop
nop
nop
cmp $28877, %r8
mov $0x5152535455565758, %r15
movq %r15, (%r10)
xor $29411, %r15

// Load
lea addresses_US+0x126f3, %r8
nop
nop
nop
nop
cmp $43198, %r10
movups (%r8), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_PSE+0xd1f3, %rcx
nop
cmp %rbp, %rbp
mov (%rcx), %edi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'51': 1}
51
*/
