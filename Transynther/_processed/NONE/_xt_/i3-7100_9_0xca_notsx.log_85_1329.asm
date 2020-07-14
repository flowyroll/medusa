.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
lea addresses_WT_ht+0x13dd9, %r10
nop
sub $5519, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%r10)
nop
nop
xor $61779, %rcx
lea addresses_UC_ht+0x608a, %r12
nop
nop
nop
nop
nop
xor $61829, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%r12)
nop
cmp %r9, %r9
lea addresses_A_ht+0xc4ab, %rcx
sub $39034, %r8
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
nop
xor $21442, %r8
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx

// Load
lea addresses_PSE+0x196d9, %rdi
inc %rcx
movb (%rdi), %r9b
nop
nop
nop
nop
nop
and $30682, %r9

// Load
mov $0x5b1e8d00000005d9, %rdx
nop
cmp %rcx, %rcx
mov (%rdx), %rax
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_D+0x19a53, %rcx
nop
nop
nop
cmp $1571, %r10
movl $0x51525354, (%rcx)
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_D+0xc519, %r9
cmp $53745, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
nop
nop
and $48585, %r9

// Store
lea addresses_A+0x11f20, %rdi
nop
nop
nop
nop
and $44450, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_US+0xdb59, %rdi
and $55323, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%rdi)
nop
and $18160, %r9

// Store
lea addresses_A+0x12659, %rdx
cmp $28538, %r9
movw $0x5152, (%rdx)
and $11503, %rcx

// Load
lea addresses_WT+0xdfd9, %r15
sub %rdi, %rdi
movb (%r15), %r9b
nop
nop
nop
nop
cmp $17630, %r10

// Faulty Load
lea addresses_WT+0x1e5d9, %rax
nop
nop
cmp $39581, %r10
mov (%rax), %di
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_NC', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'39': 85}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
